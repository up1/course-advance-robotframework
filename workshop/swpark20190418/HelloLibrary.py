from robot.api import logger
from robot.utils.asserts import assert_equal
from robot.api.deco import keyword

def say_hi(name):
    return "Hello " + name

def hello_in_console(value):
    logger.console(value, newline=True, stream='STDOUT')

@keyword('Should display greeting message')
def xxx(first, second):
    if first == second:
       return
    assert_equal(first, second)