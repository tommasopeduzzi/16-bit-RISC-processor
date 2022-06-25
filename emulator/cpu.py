from alu import Alu
from interupt import Interrupt
from memory import Memory
from registers import Register
from device import Device

operands_count = {
    0b00000: [],        # nop
    0b11111: [],        # halt
    0b00001: [0,1],     # load register register
    0b00010: [0,1],     # load8 register register
    0b00011: [0,2],     # load register address
    0b00100: [0,2],     # load8 register address
    0b00101: [0,2],     # load-imm immediate or load-addr address 
    0b00110: [0,1],     # store register register
    0b00111: [0,1],     # store< register register 
    0b01000: [0,1],     # store> register register
    0b01001: [0,2],     # store register address
    0b01010: [0,2],     # store< register address
    0b01011: [0,2],     # store> register address
    0b01100: [0],       # push register
    0b01101: [0],       # pop register
    0b01110: [0,1],     # add register register
    0b01111: [0,1],     # sub register register
    0b10000: [0,1],     # cmp register register
    0b10001: [0],       # not register
    0b10010: [0],       # shiftl register
    0b10011: [0],       # shiftr register
    0b10100: [0,1],     # and register register
    0b10101: [0,1],     # or register register
    0b10110: [0,1],     # xor register register
    0b10111: [2],       # jump address
    0b11000: [2],       # jump== address
    0b11001: [2],       # jump< address
    0b11010: [2],       # jump> address
    0b10011: [2],       # jumpc address
    0b11100: [0,1],     # in register device
    0b11101: [0,1],     # out register device
}


class CPU:
    memory: Memory
    registers: list[Register]
    alu: Alu
    pc: int = 0
    sp: int = 0xFFFF
    devices: list[Device]
    halt: bool = False

    def __init__(self, memory_size=2**16):
        self.memory = Memory(memory_size)
        self.memory.load_bin("assembler/test.bin")
        self.registers = [Register() for _ in range(8)]
        self.interrupt = Interrupt()
        self.alu = Alu()
        self.devices = [Device() for _ in range(8)]

    def run(self, steps: int) -> None:
        for _ in range(steps):
            if self.halt: return
            self.step()

    def step(self) -> None:
        if self.interrupt.active:
            for register in self.registers: # Push register values onto stack
                value = register.get()
                self.memory.set(self.sp-1, value[8:])
                self.memory.set(self.pc, value[:8])
                self.sp -= 2
            
            value = self.pc
            self.memory.set(self.sp-1, value[8:])
            self.memory.set(self.sp, value[:8])
            self.sp -= 2

            interrupt_location = self.memory.get(self.interrupt.number)
            self.pc = interrupt_location
            
        byte = self.memory.get(self.pc)
        self.pc += 1
        opcode = byte >> 3
        operands = []
        operand_count = operands_count[opcode]
        for n_bytes in operand_count:
            if n_bytes == 0:
                operands.append(byte & 7)
            elif n_bytes == 1:
                operands.append(self.memory.get(self.pc))
                self.pc += 1
            elif n_bytes == 2:
                msb = self.memory.get(self.pc+1)
                lsb = self.memory.get(self.pc)
                operands.append(msb << 8 | lsb)
                self.pc += 2
        self.execute(opcode, operands)  

    def execute(self, opcode: int, operands: list[int]) -> None:
        match opcode:
            case 0b00000:      # nop
                return
            case 0b11111:      # halt
                self.halt = True
            case 0b00001:      # load
                value = self.memory.get(self.registers[operands[1]].get()+1) << 8 | self.memory.get(self.registers[operands[1]].get())
                self.registers[operands[0]].set(value)
            case 0b00010:      # load8
                value = self.memory.get(self.registers[operands[1]].get())
                self.registers[operands[0]].set(value)
            case 0b00011:      # load
                value = self.memory.get(operands[1] + 1) << 8 | self.memory.get(operands[1] + 1) 
                self.registers[operands[0]].set(value)
            case 0b00100:      # load8
                value = self.memory.get(operands[1])
                self.registers[operands[0]].set(value)                
            case 0b00101:      # load-imm or load-addr
                self.registers[operands[0]].set(operands[1])
            case 0b00110:      # store
                value = self.registers[operands[0]].get()
                self.memory.set(self.registers[operands[1]].get(), value & 0xFF)
                self.memory.set(operands[1]+1, value >> 8)
            case 0b00111:      # store<
                value = self.registers[operands[0]].get() & 0xFF
                self.memory.set(self.registers[operands[1]].get(), value)
            case 0b01000:      # store->byte
                value = self.registers[operands[0]].get() >> 8
                self.memory.set(self.registers[operands[1]].get(), value)
            case 0b01001:      # store
                value = self.registers[operands[0]].get()
                self.memory.set(operands[1], value & 0xFF)
                self.memory.set(operands[1]+1, value >> 8)
            case 0b01010:      # store<
                value = self.registers[operands[0]].get() & 0xFF
                self.memory.set(operands[1], value)
            case 0b01011:      # store->byte
                value = self.registers[operands[0]].get() >> 8
                self.memory.set(operands[1], value)
            case 0b01100:      # push
                value = self.registers[operands[0]].get()
                self.memory.set(self.sp-1, value & 0xFF)
                self.memory.set(self.sp-2, value >> 8)
                self.sp -= 2
            case 0b01101:      # pop
                value = self.memory.get(self.sp) << 8 | self.memory.get(self.sp+1)
                self.sp += 2
            case 0b01110:      # add
                lhs = self.registers[operands[0]].get()
                rhs = self.registers[operands[1]].get()
                self.alu.add(lhs, rhs)
                self.registers[operands[0]].set(self.alu.result)
            case 0b01111:      # sub
                lhs = self.registers[operands[0]].get()
                rhs = self.registers[operands[1]].get()
                self.alu.sub(lhs, rhs)
                self.registers[operands[0]].set(self.alu.result)
            case 0b10000:      # cmp
                lhs = self.registers[operands[0]].get()
                rhs = self.registers[operands[1]].get()
                self.alu.sub(lhs, rhs)
            case 0b10001:      # not
                value = self.registers[operands[0]].get()
                self.alu.logical_not(value)
                self.registers[operands[0]].set(self.alu.result)
            case 0b10010:      # shiftl
                value = self.registers[operands[0]].get()
                self.alu.shiftl(value)
                self.registers[operands[0]].set(self.alu.result)
            case 0b10011:      # shiftr
                value = self.registers[operands[0]].get()
                self.alu.shiftr(value)
                self.registers[operands[0]].set(self.alu.result)
            case 0b10100:      # and
                lhs = self.registers[operands[0]].get()
                rhs = self.registers[operands[1]].get()
                self.alu.logical_and(lhs, rhs)
                self.registers[operands[0]].set(self.alu.result)
            case 0b10101:      # or
                lhs = self.registers[operands[0]].get()
                rhs = self.registers[operands[1]].get()
                self.alu.logical_or(lhs, rhs)
                self.registers[operands[0]].set(self.alu.result)
            case 0b10110:      # xor
                lhs = self.registers[operands[0]].get()
                rhs = self.registers[operands[1]].get()
                self.alu.logical_xor(lhs, rhs)
                self.registers[operands[0]].set(self.alu.result)
            case 0b10111:      # jump
                self.pc = operands[0]
            case 0b11000:      # jump==
                if self.alu.flags.Z:
                    self.pc = operands[0]
            case 0b11001:      # jump<
                if self.alu.flags.N:
                    self.pc = operands[0]
            case 0b11010:      # jump>
                if self.alu.flags.G:
                    self.pc = operands[0]
            case 0b11011:      # jumpc
                if self.alu.flags.C:
                    self.pc = operands[0]
            case 0b11100:      # in
                value = self.devices[operands[1]].assert_bus()
                self.registers[operands[0]].set(value)
            case 0b11101:      # out
                value = self.registers[operands[0]].get()
                self.devices[operands[1]].read_bus(value)
    
    def dump(self):
        print("Final state of CPU: ")
        for i, register in enumerate(self.registers):
            print("Register", i, ": \t", register.get())
        print("PC: \t\t", self.pc)
        print("SP: \t\t", self.sp)
    
        print("\nFinal state of devices: ")        
        for i, register in enumerate(self.devices):
            print("Device", i, ": \t", register.current_value)