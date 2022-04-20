from alu import Alu
from memory import Memory
from registers import Register

class CPU:
    memory: Memory
    registers: list[Register]
    alu: Alu
    pc: int = 0
    halt: bool = False

    def __init__(self, memory_size=2**16):
        self.memory = Memory(memory_size)
        self.memory.load_bin("emulator/test.bin")
        self.registers = [Register() for _ in range(8)]
        self.alu = Alu

    def run(self, steps: int = -1):
        for i in range(steps, 0, -1):
            self.step()

    def step(self) -> None:
        if self.halt: return
        opcode = self.memory.get(self.pc)
        op0 = self.memory.get(self.pc+1)
        op1 = self.memory.get(self.pc+2) 
        op1 += self.memory.get(self.pc+3)
        self.pc += 4
        self.execute(opcode, op0, op1)

    def execute(self, opcode: str, op0: str, op1: str) -> None:
        if opcode == "00000000": # NOP
            return
        if opcode == "00010000": # Load 16 bits
            register = int(op0, 2)
            memorylocation = int(op1, 2)
            value = self.memory.get(memorylocation)
            value += self.memory.get(memorylocation+1)
            self.registers[register].set(value)
        elif opcode == "00010001": # Load 8 bits
            register = int(op0, 2)
            memorylocation = int(op1, 2)
            value = self.memory.get(memorylocation).zfill(16)
            self.registers[register].set(value)
        elif opcode == "00010010": # Load 16-bit Immediate
            register = int(op0, 2)
            self.registers[register].set(op1)
        elif opcode == "00100000": # Store 16-bit
            register = int(op0, 2)
            value = self.registers[register].get()
            memorylocation = int(op1, 2)
            self.memory.set(memorylocation, value[8:])
            self.memory.set(memorylocation+1, value[:8])
        elif opcode == "00100001":  # Store less significant byte
            register = int(op0, 2)
            value = self.registers[register].get()
            memorylocation = int(op1, 2)
            self.memory.set(memorylocation, value[8:])        
        elif opcode == "00100010":  # Store most significant byte
            register = int(op0, 2)
            value = self.registers[register].get()
            memorylocation = int(op1, 2)
            self.memory.set(memorylocation, value[8:])
        elif opcode == "00110001": # Addition
            register = int(op0, 2)
            value1 = self.registers[register].get()
            value2 = self.registers[int(op1, 2)].get()
            result = self.alu.add(value1 + value2)
            self.registers[register].set(result)
        elif opcode == "00110010": # Subtraction
            register = int(op0, 2)
            value1 = self.registers[register].get()
            value2 = self.registers[int(op1, 2)].get()
            result = self.alu.subtract(value1, value2)
            self.registers[register].set(result)
        elif opcode == "00110011": # Compare
            value1 = self.registers[int(op0, 2)].get()
            value2 = self.registers[int(op1, 2)].get()
            self.alu.subtract(value1, value2)  
        elif opcode == "01000100": # NOT
            register = int(op0, 2)
            value = self.registers[register].get()
            result = bin(~int(value, 2) & 0xffff)[2:].zfill(16)
            self.registers[register].set(result)
        elif opcode == "01000101": # AND
            register1 = int(op0, 2)
            register2 = int(op1, 2)
            value1 = self.registers[register1].get()
            value2 = self.registers[register2].get()
            result = bin(int(value1, 2) & int(value2, 2))[2:].zfill(16)
            self.registers[register].set(result)
        elif opcode == "010001110": # OR
            register1 = int(op0, 2)
            register2 = int(op1, 2)
            value1 = self.registers[register1].get()
            value2 = self.registers[register2].get()
            result = bin(int(value1, 2) | int(value2, 2))[2:].zfill(16)
            self.registers[register].set(result)
        elif opcode == "01000111": # XOR
            register1 = int(op0, 2)
            register2 = int(op1, 2)
            value1 = self.registers[register1].get()
            value2 = self.registers[register2].get()
            result = bin(int(value1, 2) ^ int(value2, 2))[2:].zfill(16)
            self.registers[register].set(result)
        elif opcode == "01000000": # Jump
            address = int(op1, 2)
            self.pc = address
        elif opcode == "01000001": # Jump if zero/Jump if equal
            if self.alu.flags.Z:
                address = int(op1, 2)
                self.pc = address
        elif opcode == "01000010": # Jump if less than zero
            if self.alu.flags.N:
                address = int(op1, 2)
                self.pc = address
        elif opcode == "11111111": # Halt
            self.halt = True
        else:
            assert False, f"Unknown opcode: {opcode}"
        


