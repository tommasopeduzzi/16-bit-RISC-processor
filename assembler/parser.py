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
    address: int

@dataclass
class Macro():
    name: str
    argument_types: List[OperandType]
    instructions: List[Instruction]

class Parser:
    valid_operands = [
        TokenType.HEXADECIMAL, 
        TokenType.BINARY, 
        TokenType.DECIMAL, 
        TokenType.ADDRESS, 
        TokenType.REGISTER, 
        TokenType.MACRO_ARGUMENT, 
        TokenType.DEVICE,
    ]

    def __init__(self):
        self.lexer = Lexer()
        self.tokens = []
        
    def parse_file(self, file):
        with open(file, 'r') as f:
            return self.parse(f.read())
    
    def parse_number(self, value):
        if value.startswith('0x'):
            return int(value[2:], 16)
        elif value.startswith('0b'):
            return int(value[2:], 2)
        elif re.match(r'^[0-9]+$', value):
            return int(value)
        else:
            raise Exception("Invalid operand: {}".format(value))

    def parse_operand(self, token: Token, macro_definition = False):
        match token.type:
            case TokenType.REGISTER:
                register = self.parse_number(token.value[1:])
                if register < 0 or register > 7:
                    raise Exception("Invalid register: {}".format(token.value))
                return Operand(OperandType.REGISTER, register)
            case TokenType.DEVICE:
                device = self.parse_number(token.value[1:])
                if device < 0 or device > 7:
                    raise Exception("Invalid device: {}".format(token.value))
                return Operand(OperandType.DEVICE, device)
            case TokenType.ADDRESS:
                address = self.parse_number(token.value[1:])
                if address < 0 or address > 0xFFFF:
                    raise Exception("Invalid address: {}".format(address))
                return Operand(OperandType.ADDRESS, address)
            case TokenType.MACRO_ARGUMENT:
                if not macro_definition:
                    raise Exception("Macro argument found outside macro definition: {}".format(token.value))
                return Operand(OperandType.MACRO_ARGUMENT, self.parse_number(token.value[1:]))
            case _:
                immediate = self.parse_number(token.value)
                if immediate < 0 or immediate > 0xFFFF:
                    raise Exception("Invalid immediate: {}".format(immediate))
                return Operand(OperandType.IMMEDIATE, immediate)

    def parse_instruction(self, macro_definition = False):
        name = self.tokens[0].value
        operands = []
        self.tokens.pop(0)
        while len(self.tokens) > 0 and Parser.valid_operands.count(self.tokens[0].type):
            operands.append(self.parse_operand(self.tokens[0], macro_definition))
            self.tokens.pop(0)
        return Instruction(name, operands)

    def parse_macro(self):
        self.tokens.pop(0)
        if not self.tokens[0].type == TokenType.WORD:
            raise Exception("Expected name after macro declaration, found {}".format(self.tokens[0].value))
        macro_name = self.tokens[0].value
        argument_types = []
        instructions = []
        self.tokens.pop(0)
        if self.tokens[0].type == TokenType.DECIMAL:
            num_args = self.parse_number(self.tokens[0].value)
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
        while self.tokens[0].type != TokenType.END_MACRO:
            instruction = self.parse_instruction(macro_definition=True)
            instructions.append(instruction)
        self.tokens.pop(0)
        return Macro(macro_name, argument_types, instructions)

    def parse(self, contents) -> Tuple[List[Instruction], List[Label], List[Macro]]:
        instructions: List[Instruction] = []
        labels: List[Label] = {}
        macros: List[Macro] = {}
        self.tokens = self.lexer.lex(contents)
        while len(self.tokens) > 0:
            if self.tokens[0].type == TokenType.WORD: # Parse Instruction
                instruction = self.parse_instruction()
                instructions.append(instruction)            
            elif self.tokens[0].type == TokenType.LABEL: # Parse Label
                label = Label(self.tokens[0].value, len(instructions))
                labels[label.name] = label
            elif self.tokens[0].type == TokenType.START_MACRO: # Parse Macro
                macro = self.parse_macro(0)
                macros[macro.name] = macro
            else:
                raise Exception("Invalid token: {}".format(self.tokens[0].value))
        return (instructions, labels, macros)

