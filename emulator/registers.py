from dataclasses import dataclass

@dataclass
class Register:
    value: int = 0

    def set(self, value: str):
        self.value = int(value, 2)

    def get(self):
        return bin(self.value)[2:].zfill(16)