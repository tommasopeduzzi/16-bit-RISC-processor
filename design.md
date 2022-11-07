# **TDP-11**
## Design  Document

## **WARNING: This is the first time that I am doing anything like this, so this design document is going to change as the project progresses!**

## **General Info**

- 16 bit
- load-store architecture with variably-sized instructions 
- little endian

## **Registers and Flags**

The CPU has 8 general purpose registers numbered 0-7. The value of the $i$th register is referred to as $r[i]$.  Additionally, it has the stack pointer (SP), the program counter (PC).

The CPU has these flags:

| Flag | Value |
| ---- | ----- |
| Z | 1 if the last operation of the ALU resulted in zero, 0 if the last ALU operation didn't result in zero. |
| N | 1 if the last operation of the ALU resulted in a negative number, 0 if the last operation of the ALU didn't result in a negative result |
| C | 1 if the last operation of the ALU resulted in a carry, 0 if it didn't result in an overflow |

## **Memory Map**

The system has 64kB of RAM. The first 32 kB are ROM, while the second 32 kB are RAM. It is utilized as follows:

| Range | What |
|-------|------|
| 0x0000 - 0x001F | Interrupt Vector Table (in total 16 possible interrupts) |
| 0x0010 - 0x7FFF | Code and constant data ROM |
| 0x8000 - 0xFFFF | General purpose RAM, with stack at the top growing downwards. |

## **IO**
Devices are connected to the main data bus. Using the IO-instructions they can be told to assert to and to read from the bus.

## **Interrupts**
Devices can also be connected to the interrupt bus. The control logic will halt the processor, store the state and the return address to the stack and jump to the interrupt on the interrupt bus using the interrupt table at the beginning of memory. The interrupt bus has a width of 6 bits (1 bit for busy, which inhibits devices from requesting an interrupt, 1 bit of data to request an interrupt, and 4 bits for the number of the interrupt).

## **Instructions**

### **General Layout**

Instructions have variable length. The possible configurations are:

The instructions starts with a byte encoding the operation (6 less significant bits) and the number of bytes that the operands use (2 more significant bits).

The operands are stored like follows:

- Instruction with 1 operand (*register*): 4 more significant bits of one byte are the operand $O_0$: $O_0O_0O_0O_0----$

- Instruction with 2 operands (*register*/*device*, *register*/*device*): 4 more significant bytes of one byte are the first operand $O_0$, 4 less significant bits of the same byte are the second operand $O_1$: $O_0O_0O_0O_0O_1O_1O_1O_1$

- Instruction with two operands (*register*/*device*, *immediate*/*address*): 4 more significant bits of one byte are the first operand $O_0$, the following two bytes are the second operand $O_1$: $O_0O_0O_0O_0----\text{  }O_1O_1O_1O_1O_1O_1O_1O_1\text{  }O_1O_1O_1O_1O_1O_1O_1O_1$

I am planning to add more instructions as I progress and start programming with the emulator. I can then adapt this instruction set as I see fit (for example stack and calls).

### **General Instructions**

#### **Halt**

Halts the CPU. The mnemonic is **halt**.

#### **NOP**

Does nothing. The mnemonic is **nop**.

### **Memory Instructions**

#### **Load 16 bits**

Sets LSB of register $O_0$ to value stored at address $r[O_1]$ and MSB of register $O_0$  to value stored at address $r[O_1] + 1$. The mnemonic and arguments are **load *register* *register***.

Sets LSB of register $O_0$ to value stored at address $O_1$ and MSB of register $O_0$  to value stored at address $O_1 + 1$. The mnemonic and arguments are **load *register* *address***.

#### **Load into less significant byte**
Sets LSB of the register $O_0$ to byte stored at address $r[O_1]$. The mnemonic and arguments are **load8 *register* *register***.

Sets LSB of the register $O_0$ to byte stored at address $O_1$. The mnemonic and arguments are **load8 *register* *address***.

#### **Load 16-bit Immediate**
Sets register $O_0$ to $O_1$. The mnemonic and arguments are **load-imm *register* *immediate*** or **load-addr *register* *address***.

#### **Store 16 bits**
Store LSB of $r[O_0]$ at the address $r[O_1]$ and MSB of $r[O_0]$ at address $r[O_1] +1$. The mnemonic and arguments are **store *register* *register***.

Store LSB of $r[O_0]$ at the address $O_1$ and MSB of $r[O_0]$ at address $O_1+1$ . The mnemonic and arguments are **store *register* *address***.

#### **Store less significant byte**
Store the LSB of $r[O_0]$ at the address $r[O_1]$. The mnemonic and arguments are **store< *register* *register***.

Store LSB of $r[O_0]$ at the address $O_1$. The mnemonic and arguments are **store< *register* *address***.

#### **Store most significant byte**
Store the MSB of $r[O_0]$ at address $r[O_1]$. The mnemonic and arguments are **store> *register* *register***.

Store the MSB of $r[O_0]$ at address $O_1$. The mnemonic and arguments are **store> *register* *address***.

#### **Copy**
Copy $r[O_1]$ into register $O_0$. 

### **Stack Manipulation Instructions**
#### **Push**
Stores LSB of $r[O_0]$ at $SP$, MSB of $r[O_0]$ at $SP-1$ and decreases SP by 2. The mnemonic and arguments are **push *register***.

#### **Pop**
Sets LSB of register $O_0$ to data stored at address $SP+1$, sets MSB of register $O_0$ to data stored at $SP+2$ and increases SP by 2. The mnemonic and arguments are **pop *register***.

### **Arithmetic Instructions**

#### **Addition**

Adds $r[O_0]$ to $r[O_1]$ and stores them into register $O_0$. The mnemonic and arguments are **add *register* *register***.

Adds $r[O_0]$ to $O_1$ and stores the result into register $O_0$. The mnemonic and arguments are **sub *register* *immediate***.

#### **Subtraction**

Subtracts $r[O_1]$ from $r[O_0]$ and stores the result into register $O_0$. The mnemonic and arguments are **sub *register* *register***.

Subtracts $O_1$ from $r[O_0]$ and stores the result into register $O_0$. The mnemonic and arguments are **sub *register* *immediate***.

#### **Compare**

Subtracts $r[O_1]$ from $r[O_0]$ and discards the result, effectively just setting the flags. The mnemonic and arguments are **cmp *register* *register***.

Subtracts $O_1$ from $r[O_0]$, sets the flags , effectively just setting the flags. The mnemonic and arguments are **cmp *register* *immediate***.

### **Logical Instructions**

#### **NOT**

Performs NOT operation on $r[O_0]$ and stores results into register $O_0$. The mnemonic and arguments are **not *register***.

#### **Shift left**

Shifts $r[O_0]$ left by one bit, stores overflown bit in $C$-Flag and stores result back into register $O_0$. The mnemonic and arguments are **shiftl *register***.

#### **Shift right**

Shifts $r[O_0]$ right by one bit, stores overflown bit in $C$-Flag and stores result back into $O_0$. The mnemonic and arguments are **shiftr *register***.

#### **AND**

Performs AND operation on $r[O_0]$ and $r[O_1]$ and stores result into register $0_0$. The mnemonic and arguments are **and *register* *register***.

Performs AND operation on $r[O_0]$ and $O_1$ and stores the result into register $O_0$. The mnemonic and arguments are **xor *register* *immediate***.

#### **OR**

Performs OR operation on $r[O_0]$ and $r[O_1]$ and stores result into reguster $0_0$. The mnemonic and arguments are **or *register* *register***.

Performs OR operation on $r[O_0]$ and $O_1$ and stores the result into register $O_0$. The mnemonic and arguments are **or *register* *immediate***.

#### **XOR**

Performs XOR operation on $r[O_0]$ and $r[O_1]$ and stores result into register $0_0$. The mnemonic and arguments are **xor *register* *register***.

Performs XOR operation on $r[O_0]$ and  $O_1$ and stores the result into register $O_0$. The mnemonic and arguments are **xor *register* *immediate***.

### **Control flow Instructions**

#### **Jump**

Sets PC to address $r[O_0]$. The mnemonic and arguments are **jump *register***.

Sets PC to address $O_0$. The mnemonic and arguments are **jump *adress***.

#### **Jump If Zero**

Sets PC to address $r[O_0]$ if $Z$-flag is. The mnemonic and arguments are **jump== *register***.

Sets PC to address $O_0$ if $Z$-flag is. The mnemonic and arguments are **jump== *address***.

#### **Jump If Less Than Zero**

Sets PC to address $r[O_0]$ if $L$-flag is set. The mnemonic and arguments are **jump< *register***.

Sets PC to address $O_0$ if $L$-flag is set. The mnemonic and arguments are **jump< *address***.

#### **Jump If Greater Than Zero**

Sets PC to address $r[O_0]$ if the $Z$- and the $L$-flag are not set. The mnemonic and arguments are **jump> *register***.

Sets PC to address $O_0$ if the $Z$- and the $L$-flag are not set. The mnemonic and arguments are **jump> *address***.

#### **Jump If Carry**

Sets PC to address $r[O_0]$ if $C$-flag is set. The mnemonic and arguments are **jumpc *register***.

Sets PC to address $O_0$ if $C$-flag is set. The mnemonic and arguments are **jumpc *address***.

#### **Call**
Sets Stores MSB of PC at $SP$, LSB of PC at $SP-1$, decreases SP by 2 and sets PC to $O_1$. The mnemonic and arguments are **call *addr***.

#### **Return**
Sets LSB of PC to data stored at address $SP+1$, sets MSB of PC to data stored at $SP+2$ and increases SP by 2. The mnemonic and arguments are **return**.

### **IO Instructions**

#### **IN**
Notifies device to output to the main bus and reads from the main bus and stores contents into register $0_0$. The mnemonic and arguments are **in *register* *device***.

#### **OUT**
Outputs $r[O_1]$ onto the main bus and the device $O_0$ is notified to read from the main bus. The mnemonic and arguments are **out *device* *register***.