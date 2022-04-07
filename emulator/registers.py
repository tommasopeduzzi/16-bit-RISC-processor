from dataclasses import dataclass

@dataclass
class Register:
    value: int = 0

    def set(self, value: int):
        self.value = value

    def get(self):
        return self.value