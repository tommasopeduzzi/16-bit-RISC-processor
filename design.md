# **Design Document for a 16-bit RISC processor**

## **WARNING: This is the first time that I am doing anything like this, so this design document is going to change as the project progresses!**

## **General Info**

Numbers are stored in two's complement, so the effective range of numbers is from $-32768$ to $32767$. 
The computer is little endian.
The CPU is going to have 8 registers (arbitrary choice, will maybe/probably change) numbered 0 through 7.

## **CPU-Flags**

The CPU has these flags:

| Flag | Value |
| ---- | ----- |
| Z | 1 if the last operation of the ALU resulted in zero, 0 if the last ALU operation didn't result in zero. |
| N | 1 if the last operation of the ALU resulted in a negative number, 0 if the last operation of the ALU didn't result in a negative result |
| O | 1 if the last operation of the ALU resulted in a overflow, 0 if it didn't result in an overflow |

## **Memory Map**

TBD

## **Instructions**

### **General Layout**

Each Instruction consists of 4 bytes:

1. Byte: opcode
2. Byte: First operand ($O_0$)
3. Second Operand ($O_1$)

I am planning to add more instructions as I progress and start programming with the emulator. I can then adapt this instruction set as I see fit (for example stack and calls).

### **General Instructions**

#### **Halt**

Halts the CPU. The opcode is $1111 1111$

#### **NOP**

Does nothing. The opcode is $0000 0000$

### **Memory Instructions**

#### **Load 16 bits**

Loads value stored at address $O_1$ in memory to less significant byte of register $O_0$ and value stored at address $0_1 + 1$ to the most signifcant byte of register $0_0$ The opcode is $0001 0000$

#### **Load 8 bits**
Loads byte stored at address in register $O_1$ in memory to less significant byte of the register $O_0$. The opcode is $0001 0001$

#### **Load 16-bit Immediate***
Loads 16-bit Immediate $O_1$ into register $O_0$. The opcode is $0001 0010$

#### **Store 16 bits**
Store the least significant of register $O_0$ at the address $O_1$ and most significant byte of register $O_0$ at address $O_1 + 1$. The opcode is $0010 0000$

#### **Store less significant byte**
Store the bottom 8 bits of register $O_0$ at the address in register $O_1$. The opcode is $0010 0001$

#### **Store most significant byte**
Store the top 8 bits of register $O_0$ at the address in register $O_1$. The opcode is $0010 0010$

### **Numeric Instructions**

#### **Addition**

Adds contents of register $O_0$ and contents of register $O_1$ and stores them into register $O_0$. The opcode is $0011 0001$

#### **Subtraction**

Subtracts contents of register $O_1$ from contents of register $O_0$ and stores them into register $O_0$. The opcode is $0011 0010$

#### **Compare**

Subtracts contents from registers $O_1$ from contents and discards the result, effectively just setting the flags. The opcode is $0011 0011$

### **Control flow Instructions**

#### **Jump**

Sets the program counter to $O_1$. The opcode is $0100 0000$

#### **Jump If Zero/Jump If Equal**

Sets the program counter $O_1$ if $Z$-flag is set to 1. The opcode is $0100 0001$

#### **Jump If Less Than Zero**

Sets the program counter to $O_1$ if $N$-flag is set to 1. The opcode is $0100 0010$