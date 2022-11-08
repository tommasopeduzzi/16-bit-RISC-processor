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
    INCLUDE = 11
    STRING = 12
    INTERRUPT = 13

@dataclass
class Token:
    type: TokenType
    value: str


class Lexer:
    def __init__(self) -> None:
        pass
    
    def split_line(line: str) -> List[str]:
        items: List[str] = [""]
        currently_string = False
        for char in line:
            if char == "\"":
                if currently_string:
                    items[-1] += char
                    items.append("")
                else:
                    items.append("")
                    items[-1] += char
                currently_string = not currently_string
            elif char == " " and not currently_string:
                items.append("")
            else:
                items[-1] += char
        return [item.strip() for item in items if not item == ""]


    def lex(self, contents: str) -> List[Token]:
        self.tokens = []
        for line in contents.split('\n'):
            words = Lexer.split_line(line)
            for word in words:
                if word.startswith(';'):
                    break
                elif word == "macro":
                    self.tokens.append(Token(TokenType.START_MACRO, word))
                elif word == "endmacro":
                    self.tokens.append(Token(TokenType.END_MACRO, word))
                elif ["imm", "addr", "reg"].count(word) == 1:
                    self.tokens.append(Token(TokenType.MACRO_ARGUMENT_TYPE, word))
                elif word == "data":
                    self.tokens.append(Token(TokenType.DATA, word))
                elif word == "include":
                    self.tokens.append(Token(TokenType.INCLUDE, word))
                elif word == "interrupt": 
                    self.tokens.append(Token(TokenType.INTERRUPT, word))
                elif re.match(r'[a-zA-Z]+:', word):
                    self.tokens.append(Token(TokenType.LABEL, word))
                elif re.match(r'[a-zA-Z]+', word):
                    self.tokens.append(Token(TokenType.WORD, word))
                elif re.match(r'-*0x[0-9a-fA-F]+', word):
                    self.tokens.append(Token(TokenType.IMMEDIATE, word))
                elif re.match(r'-*0b[01]+', word):
                    self.tokens.append(Token(TokenType.IMMEDIATE, word))
                elif re.match(r'-*[0-9]+', word):
                    self.tokens.append(Token(TokenType.IMMEDIATE, word))
                elif word.startswith('$'):
                    self.tokens.append(Token(TokenType.REGISTER, word))
                elif word.startswith('?'):
                    self.tokens.append(Token(TokenType.DEVICE, word))
                elif word.startswith('@'):
                    self.tokens.append(Token(TokenType.ADDRESS, word))
                elif word.startswith('%'):
                    self.tokens.append(Token(TokenType.MACRO_ARGUMENT, word))
                elif word.startswith('"'):
                    self.tokens.append(Token(TokenType.STRING, word[1:-1]))
        return self.tokens