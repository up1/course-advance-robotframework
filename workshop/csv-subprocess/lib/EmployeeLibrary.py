import subprocess
from robot.api.deco import keyword
from robot.api.deco import library

@library
class EmployeeLibrary:
    def __init__(self, path='employee.py'):
        self._path = path

    @keyword
    def list_all_employees(self, path='employee.py'):
        process = subprocess.run(['python3', path, 'list_employees'], check=True, stdout=subprocess.PIPE, text=True)
        result = process.stdout.rstrip('\n')
        return result

    @keyword
    def clear_all_employees(self, path='employee.py'):
        subprocess.run(['python3', path, 'remove_all_employees'], check=True)

    @keyword
    def add_new_employee(self, path, firstname, lasname):
        subprocess.run(['python3', path, 'add_employee', firstname, lasname], check=True)