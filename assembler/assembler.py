from parser import OperandType, Parser

opcode_map = {
    # General instructions
    ("nop",            (OperandType.NONE, OperandType.NONE)):              0b00000000,
    ("halt",           (OperandType.NONE, OperandType.NONE)):              0b11111111,
    # Memory instructions
    ("load",           (OperandType.REGISTER, OperandType.REGISTER)):      0b00010000,
    ("load-<byte",     (OperandType.REGISTER, OperandType.REGISTER)):      0b00010001,
    ("set",            (OperandType.REGISTER, OperandType.NONE)):          0b00010010,
    ("load-imm",       (OperandType.IMMEDIATE, OperandType.NONE)):         0b00010011,
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
    ("jump-eq",        (OperandType.ADDRESS, OperandType.NONE)):           0b01000001,
    ("jump-n",         (OperandType.ADDRESS, OperandType.NONE)):           0b01000010,
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
        for i, operand in enumerate(instruction.operands):
            if not operand.type == macro.argument_types[i]:
                raise Exception("Macro argument type mismatch {} for macro {}".format(instruction.opcode, macro.name))
        if not len(instruction.operands) == len(macro.argument_types):
            raise Exception("Macro argument count mismatch for macro {}: Expected {} operands, but got {}".format(
                macro.name, len(macro.argument_types), len(instruction.operands)))

        for macro_instruction in macro.instructions:
            self.codegen_instruction(macro_instruction, instruction.operands, macro.argument_types)

    def codegen_instruction(self, instruction, macro_arguments = [], macro_argument_types = []):
        if instruction.opcode in self.macros.keys():
            self.codegen_macro(instruction)
            return
        operand_types = [operand.type if not operand.type == OperandType.MACRO_ARGUMENT else macro_argument_types[i]  
            for i, operand in enumerate(instruction.operands)] 
        operand_types += [-1]*(2-len(instruction.operands))
        concat_instruction = (instruction.opcode, tuple(operand_types))
        try:
            opcode = opcode_map[concat_instruction]
        except KeyError:
            raise Exception("Unknown instruction: {}".format(instruction.opcode))
        self.binary.append(opcode)
        for operand in instruction.operands:
            if operand.type == OperandType.MACRO_ARGUMENT:
                operand = macro_arguments[operand.value]
            if operand.type == OperandType.REGISTER:
                self.binary += operand.value.to_bytes(1, byteorder = 'little') 
            else:
                self.binary += operand.value.to_bytes(2, byteorder='little')
        if len(self.operands) == 0:
            self.binary += b'\x00\x00'

    def codegen(self):
        self.binary = bytearray()
        for instruction in self.instructions:
            self.codegen_instruction(instruction)
