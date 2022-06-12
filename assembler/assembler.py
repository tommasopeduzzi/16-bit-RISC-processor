from parser import OperandType, Parser

opcode_map = {
    # General instructions
    ("nop",            (OperandType.NONE, OperandType.NONE)):              0b00000000,
    ("halt",           (OperandType.NONE, OperandType.NONE)):              0b11111111,
    # Memory instructions
    ("load",           (OperandType.REGISTER, OperandType.REGISTER)):      0b00010000,
    ("load-<byte",     (OperandType.REGISTER, OperandType.REGISTER)):      0b00010001,
    ("load-<imm",      (OperandType.REGISTER, OperandType.IMMEDIATE)):     0b00010010,
    ("load->imm",      (OperandType.REGISTER, OperandType.IMMEDIATE)):     0b00010010,
    ("store",          (OperandType.REGISTER, OperandType.REGISTER)):      0b00100000,
    ("store-<byte",    (OperandType.REGISTER, OperandType.REGISTER)):      0b00100001,
    ("store->byte",    (OperandType.REGISTER, OperandType.REGISTER)):      0b00100010,
    # Stack manipulation instructions
    ("push",           (OperandType.REGISTER, OperandType.NONE)):          0b00100100,
    ("pop",            (OperandType.REGISTER, OperandType.NONE)):          0b00010100,
    # Arithmetic instructions
    ("add",            (OperandType.REGISTER, OperandType.REGISTER)):      0b00110000,
    ("sub",            (OperandType.REGISTER, OperandType.REGISTER)):      0b00110001,
    ("cmp",            (OperandType.REGISTER, OperandType.REGISTER)):      0b00110010,
    # Bitwise instrucctions
    ("not",            (OperandType.REGISTER, OperandType.NONE)):          0b00110100,
    ("and",            (OperandType.REGISTER, OperandType.REGISTER)):      0b00110101,
    ("or",             (OperandType.REGISTER, OperandType.REGISTER)):      0b00110110,
    ("xor",            (OperandType.REGISTER, OperandType.REGISTER)):      0b00110111,
    # Control flow instructions
    ("jump",           (OperandType.ADDRESS, OperandType.NONE)):           0b01000000,
    ("jump-if0",       (OperandType.ADDRESS, OperandType.NONE)):           0b01000001,
    ("jump-if<0",      (OperandType.ADDRESS, OperandType.NONE)):           0b01000010,
}

class Assembler:
    parser: Parser

    def __init__(self):
        self.parser = Parser()

    def assemble(self, file):
        self.instructions, self.labels, self.macros = self.parser.parse_file(file)
        self.codegen()
        
    def codegen_macro(self, instruction):
        macro = self.macros[instruction.opcode]
        for macro_instruction in macro.instructions:
            self.codegen_instruction(macro_instruction)

    def codegen_instruction(self, instruction, macro_arguments = []):
        if instruction.opcode in self.macros.keys():
            self.codegen_macro(instruction)
            return
        operand_types = [operand.type for operand in instruction.operands] + [-1]*(2-len(instruction.operands))
        concat_instruction = (instruction.opcode, tuple(operand_types))
        try:
            opcode = opcode_map[concat_instruction]
        except KeyError:
            raise Exception("Unknown instruction: {}".format(instruction.opcode))
        self.binary.append(opcode)
        for operand in instruction.operands:
            self.binary.append(operand.value)
        for i in range(2-len(instruction.operands)):
            self.binary.append(0)

    def codegen(self):
        self.binary = bytearray()
        for instruction in self.instructions:
            self.codegen_instruction(instruction)
