from lark import *

class Parser:
    lark_parser: Lark

    def __init__(self):
        with open("assembler/grammar.lark") as f:
            self.lark_parser = Lark(f.read())
    
    def parse_file(self, file):
        with open(file) as f:
            parsed_file = self.lark_parser.parse(f.read())
        return parsed_file # TODO: Transform into AST