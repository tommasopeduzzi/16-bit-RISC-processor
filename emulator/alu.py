from flags import Flags

class Alu:
    def __init__(self):
        self.flags = Flags()
    
    def set_flags(self, result):
        self.flags.Z = result == 0
        self.flags.N = result < 0
        self.flags.O = result > 2**15

    def add(self, value1, value2):
        result = value1 + value2
        self.set_flags(result)
        return result
    
    def subtract(self, value1, value2):
        result = value1 - value2
        self.set_flags(result)
        return result
