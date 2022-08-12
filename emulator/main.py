from cpu import CPU

if __name__ == "__main__":
    cpu = CPU()
    cpu.parse_instruction_definitions(["instructions/core.instr"])
    interrupts = [

    ]
    while not cpu.halt:
        cpu.run(1)
        if len(interrupts) > 0:
            cpu.devices[interrupts[0][0]].interrupt(cpu, interrupts[0][1])
            interrupts.pop(0)
    cpu.dump()
