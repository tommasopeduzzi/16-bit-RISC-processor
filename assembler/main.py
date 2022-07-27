from assembler import Assembler
import argparse

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("input", help="Input file")
    parser.add_argument("output", help="Output file")
    parser.add_argument("--extend_binary", help="Extends the binary file to 64K", action="store_true")
    args = parser.parse_args()
    assembler = Assembler()
    assembler.assemble(args.input)
    with open(args.output, "wb") as f:
        for i, byte in enumerate(assembler.binary):
            print(i, bin(byte)[2:].zfill(8))
            f.write(bytes([byte]))
        if args.extend_binary:
            f.write(bytes([0] * (65536 - len(assembler.binary))))