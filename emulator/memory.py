class Memory:
    memory: list

    def __init__(self, size=2**16):
        self.memory = [0 for _ in range(size)]

    def set(self, address: int, value: int):
        self.memory[address] = value

    def get(self, address: int) -> str:
        return bin(self.memory[address])[2:].zfill(8)
    
    def load_bin(self, filename: str):
        with open(filename, "rb") as f:
            index = 0
            while True:
                byte = f.read(1).hex()
                if not byte:
                    break
                self.memory[index] = int(byte, 16)
                index += 1