from enum import Enum
import re
from typing import List

from dataclasses import dataclass
from lexer import Lexer, Token, TokenType


class OperandType():
    valid_operands = [
        TokenType.IMMEDIATE,
        TokenType.ADDRESS,
        TokenType.REGISTER,
        TokenType.MACRO_ARGUMENT,
        TokenType.DEVICE,
        TokenType.OPERATOR,
        TokenType.LPAREN
    ]
    REGISTER = 0
    IMMEDIATE = 1
    ADDRESS = 2
    MACRO_ARGUMENT = 3
    DEVICE = 4
    LABEL = 5
    STRING = 6

    def to_string(type):
        match type:
            case OperandType.REGISTER:
                return "register"
            case OperandType.IMMEDIATE:
                return "immediate"
            case OperandType.ADDRESS:
                return "address"
            case OperandType.DEVICE:
                return "device"
            case _:
                return ""


@dataclass
class Operand():
    type: OperandType
    value: int


@dataclass
class Instruction():
    mnemonic: str
    operands: List[Operand]


@dataclass
class Label():
    name: str


@dataclass
class Interrupt():
    number: int


@dataclass
class Macro():
    name: str
    argument_types: List[OperandType]
    instructions: List[Instruction]


@dataclass
class DataItem():
    type: OperandType
    value: int


@dataclass
class Data():
    operands: List[DataItem]


def precedence(operator):
    try:
        return {
            "+": 1,
            "-": 1,
            "*": 2
        }[operator]
    except KeyError:
        return -1


class Parser:
    def __init__(self):
        self.lexer = Lexer()
        self.tokens = []

    def current_token(self):
        return Token(TokenType.EOF, "") if not len(self.tokens) > 0 else self.tokens[0]

    def consume_token(self):
        return self.tokens.pop(0)

    def parse_file(self, file):
        with open(file, 'r') as f:
            return self.parse(f.read())

    def parse_immediate(self) -> int:
        value = self.current_token().value
        if value == "(":
            return self.parse_expression()
        self.consume_token()
        if re.match(r'0x[0-9a-fA-F]+', value):
            return int(value[2:], 16)
        elif re.match(r'0b[01]+', value):
            return int(value[2:], 2)
        elif re.match(r'[0-9]+', value):
            return int(value)
        else:
            raise Exception("Invalid number: {}".format(value))

    def parse_operand(self, macro_definition=False) -> Operand:
        token = self.current_token()
        match token.type:
            case TokenType.REGISTER:
                token = self.consume_token()
                register = self.parse_expression()
                if register < 0 or register > 7:
                    raise Exception("Invalid register: {}".format(token.value))
                return Operand(OperandType.REGISTER, register)
            case TokenType.DEVICE:
                token = self.consume_token()
                device = self.parse_expression()
                if device < 0 or device > 7:
                    raise Exception("Invalid device: {}".format(token.value))
                return Operand(OperandType.DEVICE, device)
            case TokenType.ADDRESS:
                self.consume_token()
                token = self.current_token()
                if token.type == TokenType.WORD:
                    self.consume_token()
                    return Operand(OperandType.LABEL, token.value)
                else:
                    address = self.parse_expression()
                if address < 0 or address > 0xFFFF:
                    raise Exception("Invalid address: {}".format(address))
                return Operand(OperandType.ADDRESS, address)
            case TokenType.MACRO_ARGUMENT:
                if not macro_definition:
                    raise Exception(
                        "Macro argument found outside macro definition: {}".format(token.value))
                token = self.consume_token()
                return Operand(OperandType.MACRO_ARGUMENT, self.parse_expression())
            case TokenType.STRING:
                token = self.consume_token()
                return Operand(OperandType.STRING, token.value)
            case TokenType.IMMEDIATE | TokenType.OPERATOR | TokenType.LPAREN:
                immediate = self.parse_expression()
                # check if number is in range of signed 16 bit integer
                if immediate < -0x8000 or immediate > 0x7FFF:
                    raise Exception("Invalid immediate: {}".format(immediate))
                return Operand(OperandType.IMMEDIATE, immediate)

    def parse_instruction(self, macro_definition=False) -> Instruction:
        name = self.consume_token().value
        operands = []
        while len(self.tokens) > 0 and self.current_token().type in OperandType.valid_operands:
            operands.append(self.parse_operand(macro_definition))
            if self.current_token().type == TokenType.COMMA:
                self.consume_token()
            else: 
                break
        return Instruction(name, operands)

    def parse_macro(self) -> Macro:
        self.consume_token()
        if not self.current_token().type == TokenType.WORD:
            raise Exception("Expected name after macro declaration, found {}".format(
                self.current_token().value))
        macro_name = self.current_token().value
        argument_types = []
        instructions = []
        self.consume_token()
        try:
            num_args = self.parse_expression()
            self.consume_token()
            for _ in range(num_args):
                if not self.current_token().type == TokenType.MACRO_ARGUMENT_TYPE:
                    raise Exception("Expected macro argument type, found {}".format(
                        self.current_token().value))
                match self.current_token().value:
                    case "imm":
                        argument_types.append(OperandType.IMMEDIATE)
                    case "addr":
                        argument_types.append(OperandType.ADDRESS)
                    case "reg":
                        argument_types.append(OperandType.REGISTER)
                    case _:
                        raise Exception("Invalid macro argument type: {}".format(
                            self.current_token().value))
                self.consume_token()
        except Exception:
            raise Exception("Expected number of macro arguments, found {}".format(
                self.current_token().value))
        while self.current_token().type != TokenType.END_MACRO:
            instruction = self.parse_instruction(macro_definition=True)
            instructions.append(instruction)
        self.consume_token()
        return Macro(macro_name, argument_types, instructions)

    def parse_data(self) -> Data:
        self.consume_token()
        operands = []
        while len(self.tokens) > 0:
            try:
                operands.append(self.parse_operand(self.current_token()))
            except Exception:
                break
        return Data(operands)

    def parse_expression(self) -> int:
        if self.current_token().value == "!":
            self.consume_token()
            return not self.parse_expression()
        elif self.current_token().value == "-":
            self.consume_token()
            return self.parse_rhs(0, -self.parse_immediate())
        elif self.current_token().value == "(":
            self.consume_token()
            expression = self.parse_expression()
            if not self.current_token().value == ")":
                raise Exception("Expected closing bracket, found {}".format(
                    self.current_token().value))
            self.consume_token()
            return self.parse_rhs(0, expression)
        elif self.current_token().type == TokenType.IMMEDIATE:
            lhs = self.parse_immediate()
            return self.parse_rhs(0, lhs)
        else:
            raise Exception("Invalid expression: {}".format(
                self.current_token().value))

    def parse_rhs(self, prev_precedence, lhs):
        while True:
            operator = self.current_token().value
            if precedence(operator) < prev_precedence:
                return lhs

            self.consume_token()
            rhs = self.parse_immediate()
            next_operator = self.current_token().value
            if precedence(operator) < precedence(next_operator):
                rhs = self.parse_rhs(
                    precedence(self.current_token().value), rhs)
            match operator:
                case "+":
                    lhs = lhs + rhs
                case "-":
                    lhs =  lhs - rhs
                case "*":
                    lhs =  lhs * rhs
                case _:
                    raise Exception("Invalid operator: {}".format(operator))

    def parse_interrupt(self) -> Interrupt:
        self.consume_token()
        number = self.parse_expression()
        if number >= 0 and number <= 16:
            return Interrupt(number)
        else:
            raise Exception("Interrupt number must be between 0 and 16")

    def parse(self, contents) -> List[Instruction | Label | Macro | Data]:
        self.instructions: List[Instruction] = []
        self.stream: List[Label | Instruction | Macro] = []
        self.tokens = self.lexer.lex(contents)
        while len(self.tokens) > 0:
            match self.current_token().type:
                case TokenType.WORD:
                    instruction = self.parse_instruction()
                    self.stream.append(instruction)
                case TokenType.LABEL:
                    self.stream.append(Label(self.current_token().value[:-1]))
                    self.consume_token()
                case TokenType.START_MACRO:
                    macro: Macro = self.parse_macro()
                    self.stream.append(macro)
                case TokenType.DATA:
                    data: Data = self.parse_data()
                    self.stream.append(data)
                case TokenType.INTERRUPT:
                    interrupt: Interrupt = self.parse_interrupt()
                    self.stream.append(interrupt)
                case TokenType.INCLUDE:
                    self.consume_token()
                    if not self.current_token().type == TokenType.WORD:
                        raise Exception("Expected filename after include, got: {}".format(
                            self.current_token().value))
                    parser = Parser()
                    self.stream += parser.parse_file(
                        self.current_token().value)
                    self.consume_token()
                case _:
                    raise Exception("Invalid token: {}".format(
                        self.current_token().value))
        return self.stream
