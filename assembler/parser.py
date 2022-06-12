import re
from typing import List, Tuple

from attr import dataclass
from lexer import Lexer, TokenType

class OperandType:
    NONE = -1
    REGISTER = 0
    IMMEDIATE = 1
    ADDRESS = 2
    MACRO_ARGUMENT = 3

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
    valid_operands = [TokenType.HEXADECIMAL, TokenType.BINARY, TokenType.DECIMAL, TokenType.ADDRESS, TokenType.REGISTER, TokenType.MACRO_ARGUMENT]

    def __init__(self):
        self.lexer = Lexer()
        
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

    def parse_operand(self, value, macro_definition = False):
        if value.startswith('$'):
            return Operand(OperandType.REGISTER, self.parse_number(value[1:]))
        elif value.startswith('@'):
            return Operand(OperandType.ADDRESS, self.parse_number(value[1:]))
        elif value.startswith('%'):
            if not macro_definition:
                raise Exception("Macro argument found outside macro definition: {}".format(value))
            return Operand(OperandType.MACRO_ARGUMENT, self.parse_number(value[1:]))
        else:
            return Operand(OperandType.IMMEDIATE, self.parse_number(value))

    def parse_instruction(self, i, macro_definition = False):
        name = self.tokens[i].value
        operands = []
        i += 1
        while i < len(self.tokens) and Parser.valid_operands.count(self.tokens[i].type):
            operands.append(self.parse_operand(self.tokens[i].value, macro_definition))
            i += 1
        return (Instruction(name, operands), i)

    def parse_macro(self, i):
        i+=1
        if not self.tokens[i].type == TokenType.WORD:
            raise Exception("Expected name after macro declaration, found {}".format(self.tokens[i+1].value))
        macro_name = self.tokens[i].value
        argument_types = []
        instructions = []
        i += 1
        if self.tokens[i].type == TokenType.DECIMAL:
            num_args = self.parse_number(self.tokens[i].value)
            i += 1
            for j in range(num_args):
                if not self.tokens[i].type == TokenType.MACRO_ARGUMENT_TYPE:
                    raise Exception("Expected macro argument type, found {}".format(self.tokens[i+j].value))
                match self.tokens[i].value:
                    case "imm":
                        argument_types.append(OperandType.IMMEDIATE)
                    case "addr":
                        argument_types.append(OperandType.ADDRESS)
                    case "reg":
                        argument_types.append(OperandType.REGISTER)
                    case _:
                        raise Exception("Invalid macro argument type: {}".format(self.tokens[i+j].value))
                i+= 1
        while self.tokens[i].type != TokenType.END_MACRO:
            instruction, i = self.parse_instruction(i, True)
            instructions.append(instruction)
        i+=1
        return (Macro(macro_name, argument_types, instructions), i)

    def parse(self, contents) -> Tuple[List[Instruction], List[Label], List[Macro]]:
        instructions: List[Instruction] = []
        labels: List[Label] = {}
        macros: List[Macro] = {}
        self.tokens = self.lexer.lex(contents)
        i = 0
        while i < len(self.tokens):
            if self.tokens[i].type == TokenType.WORD: # Parse Instruction
                instruction, i = self.parse_instruction(i)
                instructions.append(instruction)
            
            elif self.tokens[i].type == TokenType.LABEL: # Parse Label
                label = Label(self.tokens[i].value, len(instructions))
                labels[label.name] = label
            
            elif self.tokens[i].type == TokenType.START_MACRO: # Parse Macro
                macro, i = self.parse_macro(i)
                macros[macro.name] = macro

            else:
                raise Exception("Invalid token: {}".format(self.tokens[i].value))
        return (instructions, labels, macros)

