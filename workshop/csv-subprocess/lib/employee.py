import csv
import os
import sys

EMPLOYEE_FILE = 'employees.csv'

def add_employee(first_name, last_name):
    """
    Adds an employee to the list of employees
    :param first_name: The first name of the employee
    :param last_name: The last name of the employee
    :return: None
    """
    with open(EMPLOYEE_FILE, 'a', newline='') as csv_file:
        writer = csv.writer(csv_file, delimiter=',', quotechar='"', quoting=csv.QUOTE_NONE)
        writer.writerow([first_name, last_name])


def list_employees():
    """
    Print the list of stored employees
    :return: None
    """
    employees_list = []
    if os.path.exists(EMPLOYEE_FILE):
        with open(EMPLOYEE_FILE, newline='') as csv_file:
            reader = csv.reader(csv_file, delimiter=',', quotechar='"')
            for row in reader:
                employees_list.append(' '.join(row))

    print(employees_list)

def remove_all_employees():
    """
    Remove all employees, the file is removed
    :return: None
    """
    if os.path.exists(EMPLOYEE_FILE):
        os.remove(EMPLOYEE_FILE)
    else:
        print("The file does not exist")


if __name__ == '__main__':
    actions = {'add_employee': add_employee,
               'list_employees': list_employees,
               'remove_all_employees': remove_all_employees}

    action = sys.argv[1]
    args = sys.argv[2:]
    actions[action](*args)