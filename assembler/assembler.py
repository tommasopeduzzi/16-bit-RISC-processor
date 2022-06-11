from parser import Parser

class Assembler:
    parser: Parser

    def __init__(self):
        self.parser = Parser()

    def assemble(self, file):
        self.instructions, self.labels = self.parser.parse_file(file)
        self.codegen()

    def codegen(self):
        pass