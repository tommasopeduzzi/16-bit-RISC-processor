from enum import Enum
import re
from typing import List

from dataclasses import dataclass

class TokenType(Enum):
    LABEL = 0
    WORD = 1
    IMMEDIATE = 2
    ADDRESS = 3
    REGISTER = 4
    START_MACRO = 5
    END_MACRO = 6
    MACRO_ARGUMENT_TYPE = 7
    MACRO_ARGUMENT = 8
    DEVICE = 9
    DATA = 10

@dataclass
class Token:
    type: TokenType
    value: str


class Lexer:
    def __init__(self) -> None:
        pass

    def lex(self, contents: str) -> List[Token]:
        self.tokens = []
        for line in contents.split('\n'):
            words = line.split(' ')
            for word in words:
                if word.startswith(';'):
                    break
                if word == "macro":
                    self.tokens.append(Token(TokenType.START_MACRO, word))
                elif word == "endmacro":
                    self.tokens.append(Token(TokenType.END_MACRO, word))
                elif ["imm", "addr", "reg"].count(word) == 1:
                    self.tokens.append(Token(TokenType.MACRO_ARGUMENT_TYPE, word))
                elif word == "data":
                    self.tokens.append(Token(TokenType.DATA, word))
                elif re.match(r'[a-zA-Z]+:', word):
                    self.tokens.append(Token(TokenType.LABEL, word))
                elif re.match(r'[a-zA-Z]+', word):
                    self.tokens.append(Token(TokenType.WORD, word))
                elif re.match(r'0x[0-9a-fA-F]+', word):
                    self.tokens.append(Token(TokenType.IMMEDIATE, word))
                elif re.match(r'0b[01]+', word):
                    self.tokens.append(Token(TokenType.IMMEDIATE, word))
                elif re.match(r'[0-9]+', word):
                    self.tokens.append(Token(TokenType.IMMEDIATE, word))
                elif word.startswith('$'):
                    self.tokens.append(Token(TokenType.REGISTER, word))
                elif word.startswith('?'):
                    self.tokens.append(Token(TokenType.DEVICE, word))
                elif word.startswith('@'):
                    self.tokens.append(Token(TokenType.ADDRESS, word))
                elif word.startswith('%'):
                    self.tokens.append(Token(TokenType.MACRO_ARGUMENT, word))
        return self.tokens