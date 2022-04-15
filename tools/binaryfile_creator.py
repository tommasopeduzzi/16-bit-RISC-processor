def main():
    contents = b"\x02\x01\xff\xff\x04\x01\x00\x00"
    with open("emulator/test.bin", "wb") as f:
        f.write(contents)
if __name__ == '__main__':
    main()