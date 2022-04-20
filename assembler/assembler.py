from parser import Parser

class Assembler:
    parser: Parser
    
    def __init__(self):
        self.parser = Parser()

    def assemble(self, file):
        self.ast = self.parser.parse_file(file)
        # TODO: Codegen