class Hello:
    def __init__(self):
        self._result = ''

    def set_name(self, name):
        self._name = name

    def get_result(self):
        return 'Hi, %s' %(self._name)

if __name__ == '__main__':
    h = Hello()
    h.set_name('somkiat')
    print(h.get_result())