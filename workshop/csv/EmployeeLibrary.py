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
        if os.path.exists(self._path):
            os.remove(self._path)
        else:
            print("The file does not exist")