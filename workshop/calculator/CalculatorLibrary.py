from calculator import Calculator

class CalculatorLibrary:
    def __init__(self):
        self._calc = Calculator()
        self._result = ''


    def push_buttons(self, buttons):
        for button in buttons.replace(' ', ''):
            self.push_button(button)

    def push_button(self, button):
        self._result = self._calc.push(button)

    def result_should_be(self, expected):
        if self._result != expected:
            raise AssertionError('%s != %s' % (self._result, expected))