import argparse


def parse_instruction_definitions(files: list[str]):
    instruction_definitions = {}
    for file in files:
        with open(file, "r") as f:
            lines = f.readlines()
            for line in lines:
                if line.startswith("#"):
                    continue
                parts = line.split()
                if parts[0] == "nop":
                    instruction_definitions[0] = "nop"
                    continue
                elif parts[0] == "halt":
                    instruction_definitions[0b111111] = "halt"
                    continue
                instruction = " ".join(parts)
                instruction_definitions[len(
                    instruction_definitions)+1] = instruction
    return instruction_definitions


def disassemble(binary: bytearray, instructions):
    output = ""
    while len(binary) > 0:
        opcode = binary.pop(0)
        opcode &= 0b111111
        try:
            instruction = instructions[opcode].split()
        except KeyError:
            output += f"data {str(opcode|(binary.pop(0)<<8))}\n"
            continue

        mnemonic = instruction.pop(0)
        operands = []
        was_reg_or_dev = False
        current_byte = 0
        for operand_type in instruction:
            match operand_type:
                case "reg" | "dev":
                    if was_reg_or_dev:
                        operands.append(
                            ("$" if operand_type == "reg" else "?") + str(current_byte & 0xf))
                        was_reg_or_dev = False
                    else:
                        current_byte = binary.pop(0)
                        operands.append(
                            ("$" if operand_type == "reg" else "?") + str(current_byte >> 4))
                        was_reg_or_dev = True
                case "imm":
                    operands.append(str(binary.pop(0) | (binary.pop(0) << 8)))
                case "addr":
                    operands.append(
                        "@" + str(binary.pop(0) | (binary.pop(0) << 8)))
        output += f"{mnemonic} {(' '.join(operands))}\n"
    return output


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("input", help="Input file")
    args = parser.parse_args()
    instructions = parse_instruction_definitions(["instructions/core.instr"])
    with open(args.input, "rb") as f:
        binary = f.read()
        print(disassemble(bytearray(binary), instructions))
