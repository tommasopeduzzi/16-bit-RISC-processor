from parser import OperandType, Parser

opcode_map = {
    # General instructions
    ("nop",            ()):                                                0b00000,
    ("halt",           ()):                                                0b11111,
    # Memory instructions
    ("load",           (OperandType.REGISTER, OperandType.REGISTER)):      0b00001,
    ("load-<byte",     (OperandType.REGISTER, OperandType.REGISTER)):      0b00010,
    ("load-imm",       (OperandType.REGISTER, OperandType.IMMEDIATE)):     0b00011,
    ("load-imm",       (OperandType.REGISTER, OperandType.ADDRESS)):       0b00011,
    ("store",          (OperandType.REGISTER, OperandType.REGISTER)):      0b00100,
    ("store-<byte",    (OperandType.REGISTER, OperandType.REGISTER)):      0b00101,
    ("store->byte",    (OperandType.REGISTER, OperandType.REGISTER)):      0b00110,
    # Stack manipulation instructions
    ("push",           (OperandType.REGISTER)):                            0b00111,
    ("pop",            (OperandType.REGISTER)):                            0b01000,
    # Arithmetic instructions
    ("add",            (OperandType.REGISTER, OperandType.REGISTER)):      0b01001,
    ("sub",            (OperandType.REGISTER, OperandType.REGISTER)):      0b01010,
    ("cmp",            (OperandType.REGISTER, OperandType.REGISTER)):      0b01011,
    # Bitwise instrucctions
    ("not",            (OperandType.REGISTER)):                            0b01100,
    ("and",            (OperandType.REGISTER, OperandType.REGISTER)):      0b01101,
    ("or",             (OperandType.REGISTER, OperandType.REGISTER)):      0b01110,
    ("xor",            (OperandType.REGISTER, OperandType.REGISTER)):      0b01111,
    # Control flow instructions
    ("jump",           (OperandType.REGISTER)):                            0b10000,
    ("jump-eq",        (OperandType.REGISTER)):                            0b10001,
    ("jump-n",         (OperandType.REGISTER)):                            0b10010,
    # IO instructions
    ("in",            (OperandType.REGISTER, OperandType.DEVICE)):         0b10011,
    ("out",           (OperandType.REGISTER, OperandType.DEVICE)):         0b10100,
}


class Assembler:
    parser: Parser

    def __init__(self):
        self.parser = Parser()

    def assemble(self, file):
        self.instructions, self.labels, self.macros = self.parser.parse_file(
            file)
        self.codegen()

    def codegen_macro(self, instruction):
        macro = self.macros[instruction.opcode]
        for i, operand in enumerate(instruction.operands):
            if not operand.type == macro.argument_types[i]:
                raise Exception("Macro argument type mismatch {} for macro {}".format(
                    instruction.opcode, macro.name))
        if not len(instruction.operands) == len(macro.argument_types):
            raise Exception("Macro argument count mismatch for macro {}: Expected {} operands, but got {}".format(
                macro.name, len(macro.argument_types), len(instruction.operands)))

        for macro_instruction in macro.instructions:
            self.codegen_instruction(
                macro_instruction, instruction.operands, macro.argument_types)

    def codegen_instruction(self, instruction, macro_arguments=[], macro_argument_types=[]):
        if instruction.opcode in self.macros.keys():
            self.codegen_macro(instruction)
            return
        operand_types = [operand.type if not operand.type == OperandType.MACRO_ARGUMENT else macro_argument_types[i]
                         for i, operand in enumerate(instruction.operands)]
        concat_instruction = (instruction.opcode, tuple(operand_types))
        try:
            opcode = opcode_map[concat_instruction] << 3
        except KeyError:
            raise Exception(
                "Unknown instruction: {}".format(instruction.opcode))
                
        if len(instruction.operands) > 0:
            for i, operand in enumerate(instruction.operands):
                if operand.type == OperandType.MACRO_ARGUMENT:
                    operand= macro_arguments[operand.value]
                if operand.type == OperandType.REGISTER or operand.type == OperandType.DEVICE:
                    if i == 0:  # shares byte with opcode
                        self.binary += (opcode | operand.value).to_bytes(1, byteorder="little")
                    else:       # has it's own byte
                        self.binary += operand.value.to_bytes(1, byteorder='little')
                else:           # immediates or addresses take up 2 bytes
                    self.binary += operand.value.to_bytes(2, byteorder='little')
        else:
            self.binary += opcode.to_bytes(1, byteorder="little")  # no operands

    def codegen(self):
        self.binary = bytearray()
        for instruction in self.instructions:
            self.codegen_instruction(instruction)
