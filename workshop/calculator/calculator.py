class Calculator:

    BUTTONS = '1234567890+-*/AC='

    def __init__(self):
        self._expression = ''

    def push(self, button):
        if button not in self.BUTTONS:
            raise CalculationError("Invalid button '%s'." % button)
        if button == '=':
            self._expression = self._calculate(self._expression)
        elif button == 'AC':
            self._expression = ''
        elif button == '/':
            self._expression += '//'    # Integer division also in Python 3
        else:
            self._expression += button
        return self._expression

    def _calculate(self, expression):
        return str(eval(expression))

class CalculationError(Exception):
    pass
