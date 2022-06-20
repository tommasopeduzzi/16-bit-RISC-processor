import re
from typing import List, Tuple

from attr import dataclass
from lexer import Lexer, Token, TokenType

class OperandType:
    NONE = -1
    REGISTER = 0
    IMMEDIATE = 1
    ADDRESS = 2
    MACRO_ARGUMENT = 3
    DEVICE = 4
    LABEL = 5
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
    opcode: str
    operands: List[Operand]

@dataclass
class Label():
    name: str

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

class Parser:
    def __init__(self):
        self.lexer = Lexer()
        self.tokens = []
        
    def parse_file(self, file):
        with open(file, 'r') as f:
            return self.parse(f.read())
    
    def parse_immediate(self, value: str) -> int:
        if value.startswith('0x'):
            return int(value[2:], 16)
        elif value.startswith('0b'):
            return int(value[2:], 2)
        elif re.match(r'^[0-9]+$', value):
            return int(value)
        else:
            raise Exception("Invalid number: {}".format(value))

    def parse_operand(self, token: Token, macro_definition = False) -> Operand:
        match token.type:
            case TokenType.REGISTER:
                register = self.parse_immediate(token.value[1:])
                if register < 0 or register > 7:
                    raise Exception("Invalid register: {}".format(token.value))
                return Operand(OperandType.REGISTER, register)
            case TokenType.DEVICE:
                device = self.parse_immediate(token.value[1:])
                if device < 0 or device > 7:
                    raise Exception("Invalid device: {}".format(token.value))
                return Operand(OperandType.DEVICE, device)
            case TokenType.ADDRESS:
                if re.match(r'[a-zA-Z]+', token.value[1:]):
                    return Operand(OperandType.LABEL, token.value[1:])
                else:
                    address = self.parse_immediate(token.value[1:])
                if address < 0 or address > 0xFFFF:
                    raise Exception("Invalid address: {}".format(address))
                return Operand(OperandType.ADDRESS, address)
            case TokenType.MACRO_ARGUMENT:
                if not macro_definition:
                    raise Exception("Macro argument found outside macro definition: {}".format(token.value))
                return Operand(OperandType.MACRO_ARGUMENT, self.parse_immediate(token.value[1:]))
            case TokenType.IMMEDIATE:
                immediate = self.parse_immediate(token.value)
                if immediate < 0 or immediate > 0xFFFF:
                    raise Exception("Invalid immediate: {}".format(immediate))
                return Operand(OperandType.IMMEDIATE, immediate)

    def parse_instruction(self, macro_definition = False) -> Instruction:
        name = self.tokens[0].value
        operands = []
        self.tokens.pop(0)
        while len(self.tokens) > 0 and OperandType.valid_operands.count(self.tokens[0].type):
            operands.append(self.parse_operand(self.tokens[0], macro_definition))
            self.tokens.pop(0)
        return Instruction(name, operands)

    def parse_macro(self) -> Macro:
        self.tokens.pop(0)
        if not self.tokens[0].type == TokenType.WORD:
            raise Exception("Expected name after macro declaration, found {}".format(self.tokens[0].value))
        macro_name = self.tokens[0].value
        argument_types = []
        instructions = []
        self.tokens.pop(0)
        if self.tokens[0].type == TokenType.IMMEDIATE:
            num_args = self.parse_immediate(self.tokens[0].value)
            self.tokens.pop(0)
            for _ in range(num_args):
                if not self.tokens[0].type == TokenType.MACRO_ARGUMENT_TYPE:
                    raise Exception("Expected macro argument type, found {}".format(self.tokens[0].value))
                match self.tokens[0].value:
                    case "imm":
                        argument_types.append(OperandType.IMMEDIATE)
                    case "addr":
                        argument_types.append(OperandType.ADDRESS)
                    case "reg":
                        argument_types.append(OperandType.REGISTER)
                    case _:
                        raise Exception("Invalid macro argument type: {}".format(self.tokens[0].value))
                self.tokens.pop(0)
        else: 
            raise Exception("Expected number of macro arguments, found {}".format(self.tokens[0].value))
        while self.tokens[0].type != TokenType.END_MACRO:
            instruction = self.parse_instruction(macro_definition=True)
            instructions.append(instruction)
        self.tokens.pop(0)
        return Macro(macro_name, argument_types, instructions)

    def parse_data(self) -> Data:
        self.tokens.pop(0)
        operands = []
        while len(self.tokens) > 0:
            if self.tokens[0].type == TokenType.IMMEDIATE:
                operands.append(DataItem(OperandType.IMMEDIATE, self.parse_immediate(self.tokens[0].value)))
            elif self.tokens[0].type == TokenType.ADDRESS:
                try:
                    operands.append(DataItem(OperandType.ADDRESS, self.parse_immediate(self.tokens[0].value[1:])))
                except:
                    operands.append(DataItem(OperandType.ADDRESS, self.tokens[0].value[1:]))
            else:
                break
            self.tokens.pop(0)

        return Data(operands)

    def parse(self, contents) -> List[Instruction | Label | Macro | Data]:
        self.instructions: List[Instruction] = []
        self.stream: List [Label | Instruction | Macro] = []
        self.tokens = self.lexer.lex(contents)
        while len(self.tokens) > 0:
            match self.tokens[0].type:
                case TokenType.WORD:
                    instruction = self.parse_instruction()
                    self.stream.append(instruction) 
                case TokenType.LABEL:
                    self.stream.append(Label(self.tokens[0].value[:-1]))
                    self.tokens.pop(0)
                case TokenType.START_MACRO:
                    macro: Macro = self.parse_macro()
                    self.stream.append(macro)
                case TokenType.DATA:
                    data: Data = self.parse_data()
                    self.stream.append(data)
                case _:
                    raise Exception("Invalid token: {}".format(self.tokens[0].value))
        return self.stream