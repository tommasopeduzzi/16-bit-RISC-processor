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
    OPERATOR = 14
    LPAREN = 15
    RPAREN = 16
    COMMA = 17
    EOF = 18


@dataclass
class Token:
    type: TokenType
    value: str


class Lexer:
    operators = ["+", "-", "*", "/"]

    keywords = {
        "macro": TokenType.START_MACRO,
        "endmacro": TokenType.END_MACRO,
        "dev": TokenType.MACRO_ARGUMENT_TYPE,
        "imm": TokenType.MACRO_ARGUMENT_TYPE,
        "addr": TokenType.MACRO_ARGUMENT_TYPE,
        # TODO: Add device to macro arguments (how tf did I miss this??)
        "data": TokenType.DATA,
        "include": TokenType.INCLUDE,
        "interrupt": TokenType.INTERRUPT,
    }

    special_characters = {
        "(": TokenType.LPAREN,
        ")": TokenType.RPAREN,
        "$": TokenType.REGISTER,
        "?": TokenType.DEVICE,
        "@": TokenType.ADDRESS,
        "%": TokenType.MACRO_ARGUMENT,
        ",": TokenType.COMMA,
    }

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

    def append_token(self, token: Token) -> str:
        self.tokens.append(token)
        return ""

    def append_word(self, word: str) -> str:
        if word in self.keywords:
            self.append_token(Token(self.keywords[word], word))
        elif re.match(r'[a-zA-Z]+:', word):
            self.tokens.append(Token(TokenType.LABEL, word))
        elif re.match(r'[a-zA-Z]+', word):
            self.tokens.append(Token(TokenType.WORD, word))
        elif re.match(r'0x[0-9a-fA-F]+', word):
            self.tokens.append(
                Token(TokenType.IMMEDIATE, word))
        elif re.match(r'0b[01]+', word):
            self.tokens.append(
                Token(TokenType.IMMEDIATE, word))
        elif re.match(r'[0-9]+', word):
            self.tokens.append(Token(TokenType.IMMEDIATE, word))
        return ""

    def lex(self, contents: str) -> List[Token]:
        self.tokens = []
        contents = list(contents)
        word: str = ""
        while len(contents) > 0:
            char = contents.pop(0)
            if char.isspace():
                word = self.append_word(word)
                continue
            elif char in self.operators:
                word = self.append_word(word)
                self.tokens.append(Token(TokenType.OPERATOR, char))
                continue
            elif char in self.special_characters:
                word = self.append_word(word)
                self.tokens.append(Token(self.special_characters[char], char))
                continue
            elif char == "\"":
                word = self.append_word(word)
                string = ""
                while len(contents) > 0:
                    char = contents.pop(0)
                    if char == "\"":
                        break
                    string += char
                self.tokens.append(Token(TokenType.STRING, string))
                continue
            elif char == ";":
                word = self.append_word(word)
                while len(contents) > 0 and not char == "\n":
                    char = contents.pop(0)
            word += char
            if len(contents) == 0:
                self.append_word(word)
        return self.tokens