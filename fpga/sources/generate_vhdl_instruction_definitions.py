files = ["instructions/core.instr"]

vhdl_file = open("fpga/instructions.vhd", "w")
number_of_instructions = 0


vhdl_file.write(
"""library IEEE;
use IEEE.std_logic_1164.all;\n"""
)
vhdl_file.write("package instructions is\n")

def write_vhdl_constant(mnemonic: str, opcode: int):
    mnemonic = mnemonic.replace("<", "l").replace(">", "g").replace("-", "").replace("==", "eq")
    vhdl_file.write(f"\tconstant {mnemonic} : std_logic_vector(5 downto 0) := \"{bin(opcode)[2:].zfill(6)}\";\n")

for file in files:
    with open(file, "r") as f:
        lines = f.readlines()
        for line in lines:
            if line.startswith("#"):
                continue
            parts = line.split()
            if parts[0] == "nop":
                write_vhdl_constant("nop", 0b000000)
                continue
            elif parts[0] == "halt":
                write_vhdl_constant("halt", 0b111111)
                continue
            mnemonic = "_".join(parts)
            number_of_instructions += 1
            write_vhdl_constant(mnemonic, number_of_instructions)
vhdl_file.write("end package instructions;")
vhdl_file.close()