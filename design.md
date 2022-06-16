# **Design Document for a 16-bit RISC processor**

## **WARNING: This is the first time that I am doing anything like this, so this design document is going to change as the project progresses!**

## **General Info**

- 16 bit
- losely based around RISC principles 
- little endian

## **Registers and Flags**

The CPU has 8 general purpose registers numbered 0-7. Additionally, it has the stack pointer (SP), the program counter (PC), and the address register and the 8-bit "register register", which holds the register that a load function will be performed on.

The CPU has these flags:

| Flag | Value |
| ---- | ----- |
| Z | 1 if the last operation of the ALU resulted in zero, 0 if the last ALU operation didn't result in zero. |
| N | 1 if the last operation of the ALU resulted in a negative number, 0 if the last operation of the ALU didn't result in a negative result |
| O | 1 if the last operation of the ALU resulted in a overflow, 0 if it didn't result in an overflow |

## **Memory Map**

The system has 64kB of RAM. The first 32 kB are ROM, while the second 32 kB are RAM. It is utilized as follows:

| Range | What |
|-------|------|
| 0x0000 - 0x000F | Interrupt Vector Table (in total 16 possible interrupts) |
| 0x0010 - 0x7FFF | Code and constant data ROM |
| 0x8000 - 0xFFFF | General purpose RAM, with stack at the top growing downwards. |

## **IO**
Devices are connected to the main data bus. Using the IO-instructions they can be told to assert to and to read from the bus.

## **Interrupts**
Devices can also be connected to the interrupt bus. The control logic will halt the processor, store the state and the return address to the stack and jump to the interrupt on the interrupt bus using the interrupt table at the beginning of memory. The interrupt bus has a width of 5 bits (1 bit for busy, which inhibits devices from requesting an interrupt, 1 bit of data to request an interrupt, and 4 bits for the number of the interrupt).

## **Instructions**

### **General Layout**

Each Instruction consists of 3 bytes:

1. Byte: opcode
2. Byte: First operand ($O_0$) (Possible type(s): *register*, *device*)
3. Second Operand ($O_1$)  (Possible types(s): *register*, *device*)

$O_2 = O_1 << 8 + O_0$ (Possible type(s): *address*, *immediate*)

I am planning to add more instructions as I progress and start programming with the emulator. I can then adapt this instruction set as I see fit (for example stack and calls).

### **General Instructions**

#### **Halt**

Halts the CPU. The opcode is $1111 1111$ and the mnemonic is **halt**.

#### **NOP**

Does nothing. The opcode is $0000 0000$ and the mnemonic is **nop**.

### **Memory Instructions**

#### **Load 16 bits**

Loads value stored at address in register $O_1$ in memory to less significant byte of register $O_0$ and value stored at address $O_1 + 1$ to the most signifcant byte of register $0_0$. The opcode is $0001 0000$ and the mnemonic and arguments are **load *register* *register***.

#### **Load into less significant byte**
Loads byte stored at address in register $O_1$ in memory to less significant byte of the register $O_0$. The opcode is $0001 0001$ and the mnemonic and arguments are **load8 *register* *register***.

#### **Set load register**
Sets the register for the register load instruction to $O_0$. The opcode is $0001 0010$ and the mnemonic and arguments are **set *register***.

#### **Load 16-bit Immediate**
Loads 16-bit Immediate $O_2$ into register in the register register. The opcode is $0001 0011$ and the mnemonic and arguments are **load *immediate***.

#### **Store 16 bits**
Store the least significant of register $O_0$ at the address in register $O_1$ and most significant byte of register $O_0$ at address in register $O_1+1$. The opcode is $0010 0000$ and the mnemonic and arguments are **store *register* *register***.

#### **Store less significant byte**
Store the bottom 8 bits of register $O_0$ at the address in register $O_1$. The opcode is $0010 0001$ and the mnemonic and arguments are **store< *register* *register***.

#### **Store most significant byte**
Store the top 8 bits of register $O_0$ at the address in register $O_1$. The opcode is $0010 0010$ and the mnemonic and arguments are **store> *register* *register***.

### **Stack Manipulation Instructions**
#### **Push**
Stores contents of register $O_0$ at location of the stack pointer and decreases stack pointer by 2. The opcode is $0010 0100$ and the mnemonic and arguments are **push *register***.

#### **Pop**
Loads contents in memory location of the stack pointer into register $O_0$ and increases stack pointer by 2. The opcode is $0001 0100$ and the mnemonic and arguments are **pop *register***.

### **Arithmetic Instructions**

#### **Addition**

Adds contents of register $O_0$ and contents of register $O_1$ and stores them into register $O_0$. The opcode is $0011 0000$ and the mnemonic and arguments are **add *register* *register***.

#### **Subtraction**

Subtracts contents of register $O_1$ from contents of register $O_0$ and stores them into register $O_0$. The opcode is $0011 0001$ and the mnemonic and arguments are **sub *register* *register***.

#### **Compare**

Subtracts contents from registers $O_1$ from contents and discards the result, effectively just setting the flags. The opcode is $0011 0010$ and the mnemonic and arguments are **cmp *register* *register***.

### **Logical Instructions**

#### **NOT**

Performs NOT operation on contents of register $O_0$ and stores results into $O_0$. The opcode is $0011 0100$ and the mnemonic and arguments are **not *register***.

#### **AND**

Performs AND operation on contents of register $O_0$ and register $O_1$ and stores result into $0_0$. The opcode is $0100 0101$ and the mnemonic and arguments are **and *register* *register***.

#### **OR**

Performs OR operation on contents of register $O_0$ and register $O_1$ and stores result into $0_0$. The opcode is $0100 0110$ and the mnemonic and arguments are **or *register* *register***.

#### **XOR**

Performs XOR operation on contents of register $O_0$ and register $O_1$ and stores result into $0_0$. The opcode is $0100 0111$ and the mnemonic and arguments are **xor *register* *register***.

### **Control flow Instructions**

#### **Jump**

Sets the program counter to $O_2$. The opcode is $0100 0000$ and the mnemonic and arguments are **jump *address***.

#### **Jump If Zero/Jump If Equal**

Sets the program counter $O_2$ if $Z$-flag is. The opcode is $0100 0001$ and the mnemonic and arguments are **jump-eq *address***.

#### **Jump If Less Than Zero**

Sets the program counter to $O_2$ if $N$-flag is set. The opcode is $0100 0010$ and the mnemonic and arguments are **jump-n *address***.

### **IO Instructions**

#### **IN**
Notifies device to output to the main bus and reads from the main bus and stores contents into register $0_0$. The opcode is $1000 0000$ and the mnemonic and arguments are **in *register* *device***.

#### **OUT**
Outputs contents of register $O_0$ onto the main bus and the device $O_1$ is notified to read from the main bus. The opcode is $1000 0001$ and the mnemonic and arguments are **out *register* *device***.