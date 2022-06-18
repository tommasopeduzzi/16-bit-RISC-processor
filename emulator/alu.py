from flags import Flags

class Alu:
    def __init__(self):
        self.flags = Flags()
        self.result: int = 0
    
    def set_flags(self, result):
        self.flags.Z = result == 0
        self.flags.N = result < 0
        self.flags.O = result > 2**16 -1

    def add(self, lhs, rhs) -> None:
        result = lhs + rhs
        self.set_flags(result)
        self.result = result & 0xFFFF
    
    def sub(self, rhs, lhs) -> None:
        result = rhs - lhs 
        self.set_flags(result)
        self.result = result & 0xFFFF
    
    def logical_and(self, lhs, rhs) -> None:
        result = lhs & rhs
        self.set_flags(result)
        self.result = result
    
    def logical_or(self, lhs, rhs) -> None:
        result = lhs | rhs
        self.set_flags(result)
        self.result = result
    
    def logical_xor(self, lhs, rhs) -> None:
        result = lhs ^ rhs
        self.set_flags(result)
        self.result = result
