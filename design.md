# **Design Document for a 16-bit RISC processor**

## **CPU-Flags**
The CPU has these flags:
| Flag | Value |
|---|---|
|Z| 1 if the last operation of the ALU resulted in zero, 0 if the last ALU operation didn't result in zero. |
| N | 1 if the last operation of the ALU resulted in a negative number, 0 if the last operation of the ALU didn't result in a negative result |
| O | 1 if the last operation of the ALU resulted in a result bigger than $2^{16}$, 0 if the result was smaller than $2^{16}$

## **Memory Map**
TBD
## **Instructions**
### **General Layout**
Each Instruction consists of 4 bytes:
1. Byte: OP code described later
2. Byte: First operand ($O_0$)
3. & 4. Byte: Second Operand ($O_1$)

I am planning to add more instructions as I progress and start programming with the emulator. I can then adapt this instruction set as I see fit (for example stack and calls).

### **Memory Instructions**
#### **Load 16 bits**
Loads value stored at address $O_1$ in memory to lower 8 bits of register $O_0$ and value stored at address $0_1 + 1$ to the upper 8 bits of register $0_0$ The op-code is 0000
#### **Load 8 bits**
Loads byte stored at address $O_1$ in memory to lower 8 bits of the register $O_0$. The op-code is 0001
#### **Load 16 bit Immediate**
Loads 16-bit immediate $O_1$ into register $O_0$. The op-code is 0010
#### **Store 16 bits**
Store the bottom 8 bits of register $O_0$ at the address $O_1$ and top 8 bits of register $O_0$ at address $O_1 + 1$. The op-code is 0100
#### **Store bottom 8 bits**
Store the bottom 8 bits of register $O_0$ at the address $O_1$. The op-code is 0101
#### **Store top 8 bits**
Store the top 8 bits of register $O_0$ at the address $O_1$. The op-code is 0101

### **Numeric Instructions**
#### **Addition**
Adds contents of register $O_0$ and contents of register $O_1$ and stores them into register $O_0$

#### **Subtraction**
Subtracts contents of register $O_1$ from contents of register $O_0$ and stores them into register $O_0$

#### **Compare**
Subtracts contents from registers $O_1$ from contents and discards the result, effectively just setting the flags.

### **Control flow Instructions**
#### **Jump**
Sets the program counter to $O_1$.

#### **Jump If Not Zero**
Sets the program counter to $O_1$ if $Z$-flag is set to 1.

#### **Jump If Less Than Zero**
Sets the program counter to $O_1$ if $N$-flag is set to 1.
