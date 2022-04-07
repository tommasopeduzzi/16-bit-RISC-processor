from memory import Memory
from registers import Register
from flags import Flags

class CPU:
    memory: Memory
    registers: list[Register]
    flags: Flags
    pc: int = 0

    def __init__(self, memory_size=2**16):
        self.memory = Memory(memory_size)
        self.memory.load_bin("test.bin")
        self.registers = [Register() for _ in range(8)]
        self.flags = Flags()
        self.pc = 0

    def run(self, steps: int = -1):
        for i in range(steps, 0, -1):
            self.step()

    def step(self) -> None:
        opcode = self.memory.get(self.pc)
        op1 = self.memory.get(self.pc+1)
        op2 = self.memory.get(self.pc+2) 
        op2 += self.memory.get(self.pc+3)
        self.pc += 4
        self.execute(opcode, op1, op2)

    def execute(self, opcode: str, op1: str, op2: str) -> None:
        if opcode == "0010".zfill(8):
            index = int(op1, 2)
            self.registers[index].set(int(op2, 2))
