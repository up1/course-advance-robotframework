# Workshop :: Working with CSV file

## Let's start
* Create file `employees.csv`
* Create file `employee.py`

employees.csv
```
firstname,lastname
f01,l01
f02,l02
f03,l03
f04,l04
f05,l05
```

employee.py
```
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
```

Run with python
```
$python employee.py list_employees
$python employee.py add_employee <firstname> <lastname>
$python employee.py remove_all_employees
```

Try by your self or copy from `employee_final.py`
