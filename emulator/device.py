class Device:
    def __init__(self) -> None:
        self.current_value: int = 0
    
    def assert_bus(self) -> int:
        return self.current_value
    
    def read_bus(self, value: int) -> None:
        self.current_value = value