import csv
import os
import sys
from robot.api.deco import keyword
from robot.api.deco import library

@library
class EmployeeLibrary:
    def __init__(self, path='employees.csv'):
        self._path = path

    @keyword
    def list_employees(self):
        employees_list = []
        if os.path.exists(self._path):
            with open(self._path, newline='') as csv_file:
                reader = csv.reader(csv_file, delimiter=',', quotechar='"')

                for row in reader:
                    employees_list.append(' '.join(row))

        return employees_list

    @keyword
    def remove_all_employees(self):
        """
        Clear the list of employees.

        Arguments: None

        Examples:
            Remove All Employees 
        """
        if os.path.exists(self._path):
            os.remove(self._path)
        else:
            print("The file does not exist")

    @keyword
    def add_new_employee(self, firstname, lasname):
        """
        Add an employee.

        Arguments:
        - ''first_name:''           The first name of the employee to be added.
        - ''last_name:''            The last name of the employee to be added.
        
        Examples:
        | Add New Employee | somkiat | pui
        """
        pass