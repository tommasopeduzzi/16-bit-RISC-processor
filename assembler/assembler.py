from typing import Dict, List
from parser import Data, Instruction, Label, Macro, OperandType, Parser

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
    ("push",           (OperandType.REGISTER,)):                            0b00111,
    ("pop",            (OperandType.REGISTER,)):                            0b01000,
    # Arithmetic instructions
    ("add",            (OperandType.REGISTER, OperandType.REGISTER)):      0b01001,
    ("sub",            (OperandType.REGISTER, OperandType.REGISTER)):      0b01010,
    ("cmp",            (OperandType.REGISTER, OperandType.REGISTER)):      0b01011,
    # Bitwise instrucctions
    ("not",            (OperandType.REGISTER,)):                            0b01100,
    ("and",            (OperandType.REGISTER, OperandType.REGISTER)):      0b01101,
    ("or",             (OperandType.REGISTER, OperandType.REGISTER)):      0b01110,
    ("xor",            (OperandType.REGISTER, OperandType.REGISTER)):      0b01111,
    # Control flow instructions
    ("jump",           (OperandType.REGISTER,)):                            0b10000,
    ("jump-eq",        (OperandType.REGISTER,)):                            0b10001,
    ("jump-n",         (OperandType.REGISTER,)):                            0b10010,
    # IO instructions
    ("in",            (OperandType.REGISTER, OperandType.DEVICE)):         0b10011,
    ("out",           (OperandType.REGISTER, OperandType.DEVICE)):         0b10100,
}


class Assembler:
    parser: Parser

    def __init__(self):
        self.parser = Parser()
        self.address = 0
        self.binary = bytearray()
        self.operations: List[Instruction] = []
        self.labels: Dict[Label] = {}
        self.macros: Dict[Macro] = {}

    def assemble(self, file):
        self.stream = self.parser.parse_file(file)
        self.codegen()

    def codegen_data(self, data):
        for operand in data.operands:
            if operand.type == OperandType.IMMEDIATE or operand.type == OperandType.ADDRESS:
                self.binary += operand.value.to_bytes(2, byteorder="little")
            elif operand.type == OperandType.LABEL:
                self.binary += self.labels[operand.value].to_bytes(2, byteorder="little")

    def codegen_instruction(self, instruction: Instruction, macro_arguments=[], macro_argument_types=[]):
        operand_types = []
        for operand in instruction.operands:
            if operand.type == OperandType.MACRO_ARGUMENT:
                if operand.value >= len(macro_arguments):
                    raise Exception("Invalid macro argument: {}".format("%"+operand.value))
                operand_types.append(macro_argument_types[operand.value])
            elif operand.type == OperandType.LABEL:
                operand_types.append(OperandType.ADDRESS)
            else:
                operand_types.append(operand.type)
        operand_types = tuple(operand_types)

        if (instruction.opcode, operand_types) in self.macros:
            macro = self.macros[(instruction.opcode, operand_types)]
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
            return 
        elif (instruction.opcode, operand_types) in opcode_map:
            opcode = opcode_map[(instruction.opcode, operand_types)] << 3                
            if len(instruction.operands) > 0:
                for i, operand in enumerate(instruction.operands):
                    if operand.type == OperandType.MACRO_ARGUMENT:
                        operand= macro_arguments[operand.value]
                    if operand.type == OperandType.REGISTER or operand.type == OperandType.DEVICE:
                        if i == 0:  # shares byte with opcode
                            self.binary += (opcode | operand.value).to_bytes(1, byteorder="little")
                        else:       # has it's own byte
                            self.binary += operand.value.to_bytes(1, byteorder='little')
                    elif operand.type == OperandType.LABEL:
                        try:
                            address = self.labels[operand.value]
                        except KeyError:
                            raise Exception(
                                "Label not found: {}".format(operand.value))
                        self.binary += address.to_bytes(2, byteorder="little")
                    else:           # immediates or addresses take up 2 bytes
                        self.binary += operand.value.to_bytes(2, byteorder='little')
            else:
                self.binary += opcode.to_bytes(1, byteorder="little")  # no operands
        else:
            raise Exception("Unknown instruction or macro: {}".format(instruction.opcode + " " + " ".join([OperandType.to_string(type) for type in operand_types])))

    def codegen(self):
        for item in self.stream: # Collect label addresses
            if isinstance(item, Label):
                self.labels[item.name] = self.address
            elif isinstance(item, Instruction):
                self.address += 1
                for i, operand in enumerate(item.operands):
                    if [OperandType.REGISTER, OperandType.DEVICE].count(operand.type) > 0 and not i == 0:
                        self.address += 1
                    elif [OperandType.ADDRESS, OperandType.LABEL, OperandType.IMMEDIATE].count(operand.type) > 0:
                        self.address += 2
                self.operations.append(item)
            elif isinstance(item, Data):
                self.address += 2*len(item.operands)
                self.operations.append(item)
            elif isinstance(item, Macro):
                self.macros[(item.name, tuple(item.argument_types))] = item
    
        for operation in self.operations: # Codegen instructions and data in order
            if isinstance(operation, Instruction):
                self.codegen_instruction(operation)
            elif isinstance(operation, Data):
                self.codegen_data(operation)
