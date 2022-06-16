from emulator.cpu import CPU


class Device:

    def __init__(self, cpu: CPU) -> None:
        self.cpu = cpu
        self.current_value = "00000000"

    def request_interrupt(self, interrupt: int) -> None:
        self.cpu.interrupt(interrupt)
    
    def assert_bus(self) -> str:
        return self.current_value
    
    def read_bus(self, value: str) -> None:
        self.current_value = value