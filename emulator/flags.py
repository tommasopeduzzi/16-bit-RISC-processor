from dataclasses import dataclass

@dataclass
class Flags:
    Z: bool = False
    N: bool = False
    G: bool = False
    C: bool = False
