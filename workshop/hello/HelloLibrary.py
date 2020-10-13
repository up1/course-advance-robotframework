from hello import Hello
from robot.api import logger

from robot.api.deco import keyword

class HelloLibrary:
    """ Hello Library to *Hello* with name

    Calling from ``set_name`` method
    """

    def __init__(self):
        self._hello = Hello()
        self._result = ''

    @keyword('Try to say hi with')
    def say_hi(self, name):
        """ Say hi with name

        Examples:
        | Say hi | name 1 |
        | Say hi | name 2 |
        """
        self._hello.set_name(name)
        logger.console('Say hi with %s' %(name))

    def result_should_be(self, expected):
        """ Verifies that the current result is ``expected``.

        Examples:
        | Result Should Be | Hi, name 1 |
        | Result Should Be | Hi, name 2 |
        """
        if self._hello.get_result() != expected:
            raise AssertionError('%s != %s' % (self._result, expected))

    def say_hi2(self, name='no name 1', name2='no name 2'):
        self._hello.set_name(name)

    def say_hi_all(self, **names):
        for name, value in names.items():
            print('%s = %s' % (name, value))

if __name__ == '__main__':
    pass