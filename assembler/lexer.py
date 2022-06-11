from enum import Enum
import re
from typing import List

from attr import dataclass

class TokenType(Enum):
    LABEL = 0
    WORD = 1
    HEXADECIMAL = 2
    BINARY = 3
    DECIMAL = 4
    ADDRESS = 5

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
            words = line.split(" ")
            for word in words:
                if word.endswith(':'):
                    self.tokens.append(Token(TokenType.LABEL, word))
                elif re.match(r'[a-zA-Z]+', word):
                    self.tokens.append(Token(TokenType.WORD, word))
                elif re.match(r'0x[0-9a-fA-F]+', word):
                    self.tokens.append(Token(TokenType.HEXADECIMAL, word))
                elif re.match(r'0b[01]+', word):
                    self.tokens.append(Token(TokenType.BINARY, word))
                elif re.match(r'[0-9]+', word):
                    self.tokens.append(Token(TokenType.DECIMAL, word))
                elif word.startswith("@"):
                    self.tokens.append(Token(TokenType.ADDRESS, word))
        return self.tokens