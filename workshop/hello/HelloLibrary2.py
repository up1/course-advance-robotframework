from robot.api import logger

from robot.api.deco import keyword

class HelloLibrary2:

    @keyword('Hello "${name}" with age "${age:\d+}" year(s)')
    def say_hi(self, name, age):
        logger.console('Hello %s with age %s' %(name, age))
