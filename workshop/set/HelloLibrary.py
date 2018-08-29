from robot.api.deco import keyword

class HelloLibrary:
    """ jjjjj

    kkkkkkkkkkk
    llllllllllll
    """
    @keyword('My name is "${name}", i am "${age:\d+}" years old')
    def say_hi2(self, name, age):
        print("Hi, %s age %d" %(name, int(age)))

    @keyword('Try to say with')
    def say_hi(self, name=None, age=30):
        """  Say hi version 1

        Examples:
        | Try to say with | |
        | Try to say with |  somkiat |
        | Try to say with |  name=somkiat |
        | Try to say with |  age=25 |
        """
        print("Hi, %s age %d" %(name, int(age)))

    def hi_all(self, **names):
        for key, val in names.items():
            print('%s=%s' %(key, val))

