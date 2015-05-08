class Hall:

    def __init__(self):
        self.hall = [
            ['.' for element in range(10)] for element in range(10)]

    def reserve(self, row, col):
        self.hall[row][col] = 'X'
        return
