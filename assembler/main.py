from assembler import Assembler
import argparse

def bits(n):
    while n:
        b = n & (~n+1)
        yield b
        n ^= b

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("input", help="Input file")
    parser.add_argument("output", help="Output file")
    parser.add_argument("--fpga_mem_init", help="Generate file to initialize FPGA memory", action="store_true")
    args = parser.parse_args()
    assembler = Assembler()
    assembler.assemble(args.input)
    with open(args.output, "wb") as f:
        if not args.fpga_mem_init:
            for i, byte in enumerate(assembler.binary):
                print(i, bin(byte)[2:].zfill(8))
                f.write(bytes([byte]))
        if args.fpga_mem_init:
            for i, byte in enumerate(assembler.binary):
                bits = [int(b) for b in bin(byte)[2:]]
                for bit in [int(b) for b in bin(byte)[2:].zfill(8)]:
                    f.write(bytes([48 + bit]))
                f.write(bytes([10]))
            f.write(bytes(([48]*8 + [10]) * (65536 - len(assembler.binary))))