from assembler import Assembler
import argparse

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("input", help="Input file")
    parser.add_argument("output", help="Output file")
    args = parser.parse_args()
    assembler = Assembler()
    assembler.assemble(args.input)
    with open(args.output, "wb") as f:
        for byte in assembler.binary:
            print(bin(byte)[2:].zfill(8))
            f.write(bytes([byte]))