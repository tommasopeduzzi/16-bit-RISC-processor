class Flags:
    Z: bool = False
    N: bool = False
    O: bool = False

    def set_z(self, value: bool):
        self.Z = value
    
    def set_n(self, value: bool):
        self.N = value

    def set_o(self, value: bool):
        self.O = value
