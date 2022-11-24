from dataclasses import dataclass
import re
from alu import Alu
from interupt import Interrupt
from memory import Memory
from registers import Register
from device import Device


@dataclass
class Operands:
    registers = [0, 0]
    immediate = 0

@dataclass
class Instruction:
    opcode: int
    operands: Operands

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
            if self.halt:
                return
            self.step()

    def step(self) -> None:
        if self.interrupt.active:
            for register in self.registers:  # Push register values onto stack
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

        opcode = byte & 0b111111
        instruction = Instruction(opcode, Operands())
        number_of_bytes = byte >> 6
        immediate_byte = 0
        for i in range(number_of_bytes):
            if i == 0 and not number_of_bytes == 2:
                byte = self.memory.get(self.pc)
                instruction.operands.registers[0] = byte >> 4
                instruction.operands.registers[1] = byte & 0b1111
                self.pc += 1
            else:
                byte = self.memory.get(self.pc)
                instruction.operands.immediate = byte << 8 * \
                    immediate_byte | instruction.operands.immediate
                immediate_byte += 1
                self.pc += 1
        self.execute(instruction)

    def execute(self, instruction: Instruction) -> None:
        registers = instruction.operands.registers
        immediate = instruction.operands.immediate
        mnemonic = self.instruction_definitions[instruction.opcode]
        match mnemonic:
            case "nop":      # nop
                return
            case "halt":      # halt
                self.halt = True
            case "load reg reg":      # load
                value = self.memory.get(self.registers[registers[1]].get(
                )+1) << 8 | self.memory.get(self.registers[registers[1]].get())
                self.registers[registers[0]].set(value)
            case "load8 reg reg":      # load8
                value = self.memory.get(self.registers[registers[1]].get())
                self.registers[registers[0]].set(value)
            case "load reg addr":      # load
                value = self.memory.get(
                    immediate + 1) << 8 | self.memory.get(immediate + 1)
                self.registers[registers[0]].set(value)
            case "load reg addr":      # load8
                value = self.memory.get(immediate)
                self.registers[registers[0]].set(value)
            case "set reg imm" | "set reg addr":      # set
                self.registers[registers[0]].set(immediate)
            case "store reg reg":      # store
                value = self.registers[registers[0]].get()
                self.memory.set(
                    self.registers[registers[1]].get(), value & 0xFF)
                self.memory.set(
                    self.registers[registers[1]].get()+1, value >> 8)
            case "store< reg reg":      # store<
                value = self.registers[registers[0]].get() & 0xFF
                self.memory.set(self.registers[registers[1]].get(), value)
            case "store> reg reg":      # store>
                value = self.registers[registers[0]].get() >> 8
                self.memory.set(self.registers[registers[1]].get(), value)
            case "store reg addr":      # store
                value = self.registers[registers[0]].get()
                self.memory.set(immediate, value & 0xFF)
                self.memory.set(immediate+1, value >> 8)
            case "store< reg addr":      # store<
                value = self.registers[registers[0]].get() & 0xFF
                self.memory.set(immediate, value)
            case "store> reg addr":      # store>
                value = self.registers[registers[0]].get() >> 8
                self.memory.set(immediate, value)
            case "copy reg reg": 
                value = self.registers[registers[1]].get()
                self.registers[registers[0]].set(value)
            case "push reg":      # push
                value = self.registers[registers[0]].get()
                self.memory.set(self.sp-1, value & 0xFF)
                self.memory.set(self.sp-2, value >> 8)
                self.sp -= 2
            case "pop reg":      # pop
                value = self.memory.get(
                    self.sp) << 8 | self.memory.get(self.sp+1)
                self.registers[registers[0]].set(value)
                self.sp += 2
            case "add reg reg":      # add
                lhs = self.registers[registers[0]].get()
                rhs = self.registers[registers[1]].get()
                self.alu.add(lhs, rhs)
                self.registers[registers[0]].set(self.alu.result)
            case "sub reg reg":      # sub
                lhs = self.registers[registers[0]].get()
                rhs = self.registers[registers[1]].get()
                self.alu.sub(lhs, rhs)
                self.registers[registers[0]].set(self.alu.result)
            case "cmp reg reg":      # cmp
                lhs = self.registers[registers[0]].get()
                rhs = self.registers[registers[1]].get()
                self.alu.sub(lhs, rhs)
            case "not reg":      # not
                value = self.registers[registers[0]].get()
                self.alu.logical_not(value)
                self.registers[registers[0]].set(self.alu.result)
            case "shiftl reg":      # shiftl
                value = self.registers[registers[0]].get()
                self.alu.shiftl(value)
                self.registers[registers[0]].set(self.alu.result)
            case "shiftr reg":      # shiftr
                value = self.registers[registers[0]].get()
                self.alu.shiftr(value)
                self.registers[registers[0]].set(self.alu.result)
            case "and reg reg":      # and
                lhs = self.registers[registers[0]].get()
                rhs = self.registers[registers[1]].get()
                self.alu.logical_and(lhs, rhs)
                self.registers[registers[0]].set(self.alu.result)
            case "or reg reg":      # or
                lhs = self.registers[registers[0]].get()
                rhs = self.registers[registers[1]].get()
                self.alu.logical_or(lhs, rhs)
                self.registers[registers[0]].set(self.alu.result)
            case "xor reg reg":      # xor
                lhs = self.registers[registers[0]].get()
                rhs = self.registers[registers[1]].get()
                self.alu.logical_xor(lhs, rhs)
                self.registers[registers[0]].set(self.alu.result)
            case "jump addr":      # jump
                self.pc = immediate
            case "jump== addr":      # jump==
                if self.alu.flags.Z:
                    self.pc = immediate
            case "jump< addr":      # jump<
                if self.alu.flags.N:
                    self.pc = immediate
            case "jump> addr":      # jump>
                if self.alu.flags.G:
                    self.pc = immediate
            case "jumpc addr":      # jumpc
                if self.alu.flags.C:
                    self.pc = immediate
            case "in reg dev":      # in
                value = self.devices[registers[1]].assert_bus()
                self.registers[registers[0]].set(value)
            case "out reg dev":      # out
                value = self.registers[registers[0]].get()
                self.devices[registers[1]].read_bus(value)

    def dump(self):
        print("Final state of CPU: ")
        for i, register in enumerate(self.registers):
            print("Register", i, ": \t", register.get())
        print("PC: \t\t", self.pc)
        print("SP: \t\t", self.sp)
        print("\nFinal state of devices: ")
        for i, register in enumerate(self.devices):
            print("Device", i, ": \t", register.current_value)

    def parse_instruction_definitions(self, files: list[str]):
        self.instruction_definitions = {}
        number_of_instructions = 0
        for file in files:
            with open(file, "r") as f:
                lines = f.readlines()
                for line in lines:
                    if line.startswith("#"):
                        continue
                    parts = line.split()
                    if parts[0] == "nop":
                        self.instruction_definitions[0] = "nop"
                        continue
                    elif parts[0] == "halt":
                        self.instruction_definitions[0b111111] = "halt"
                        continue
                    instruction = " ".join(parts)
                    number_of_instructions += 1
                    self.instruction_definitions[number_of_instructions] = instruction
