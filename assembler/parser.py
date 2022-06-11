import re
from typing import List, Tuple

from attr import dataclass
from lexer import Lexer, TokenType

@dataclass
class Operand():
    pass

@dataclass
class Immediate(Operand):
    value: int

@dataclass
class Address(Operand):
    value: Immediate

@dataclass
class Instruction():
    opcode: str
    operands: List[Operand]

@dataclass
class Label():
    name: str
    address: int

class Parser:
    def __init__(self):
        self.lexer = Lexer()

    def parse_file(self, file):
        with open(file, 'r') as f:
            return self.parse(f.read())
    
    def parse_operand(self, value):
        if value.startswith('0x'):
            return Immediate(int(value[2:], 16))
        elif value.startswith('0b'):
            return Immediate(int(value[2:], 2))
        elif value.startswith('@'):
            return Address(self.parse_operand(value[1:]))
        else:
            return Immediate(int(value))
    
    def parse(self, contents) -> Tuple[List[Instruction], List[Label]]:
        instructions: List[Instruction] = []
        labels: List[Label] = []
        tokens = self.lexer.lex(contents)
        for i in range(len(tokens)):
            if tokens[i].type == TokenType.WORD: # Parse Instruction
                if [TokenType.HEXADECIMAL, TokenType.BINARY, TokenType.DECIMAL].count(tokens[i+1].type) == 0:
                    raise Exception("Invalid token sequence: {} {}".format(tokens[i].value, tokens[i+1].value))
                if [TokenType.ADDRESS, TokenType.HEXADECIMAL, TokenType.BINARY, TokenType.DECIMAL].count(tokens[i+2].type):
                    instruction = Instruction(tokens[i].value, 
                        [self.parse_operand(tokens[i+1].value), 
                        self.parse_operand(tokens[i+2].value)])
                    i += 2
                else:
                    instruction = Instruction(tokens[i].value, 
                                    [self.parse_operand(tokens[i+1].value)])
                    i += 1
                instructions.append(instruction)
            elif tokens[i].type == TokenType.LABEL:
                labels.append(Label(tokens[i].value, len(instructions)))
        return (instructions, labels)

