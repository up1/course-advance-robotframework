import csv
import os
import sys

EMPLOYEE_FILE = 'employees.csv'

def list_employees():
    pass

def add_employee(firstname, lastname):
    pass

def remove_all_employees():
    pass

if __name__ == '__main__':
    actions = {'list_employees': list_employees,
               'add_employee': add_employee,
               'remove_all_employees': remove_all_employees}

    action = sys.argv[1]
    args = sys.argv[2:]
    actions[action](*args)