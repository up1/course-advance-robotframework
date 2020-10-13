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


## Step 2 :: Working with robot framework library

employee_lib.py
```
import csv
import os
import sys
from robot.api.deco import keyword

ROBOT_LIBRARY_VERSION = '0.1'
ROBOT_AUTO_KEYWORDS = False

EMPLOYEE_FILE = 'employees.csv'

@keyword
def list_employees():
    employees_list = []
    if os.path.exists(EMPLOYEE_FILE):
        with open(EMPLOYEE_FILE, newline='') as csv_file:
            reader = csv.reader(csv_file, delimiter=',', quotechar='"')

            for row in reader:
                employees_list.append(' '.join(row))

    return employees_list

@keyword
def remove_all_employees():
    if os.path.exists(EMPLOYEE_FILE):
        os.remove(EMPLOYEE_FILE)
    else:
        print("The file does not exist")
```

Create file `trey_02.robot`
```
*** Settings ***
Library    employee_lib.py

*** Test Cases ***
Empty employees list
    [Setup]   Clear employees list
    ${result}=  Get employees list
    Should Be Empty    ${result}

*** Keywords ***
Clear employees list
    employee_lib.Remove all employees

Get employees list
    ${result}=  employee_lib.List employees
    [Return]   ${result}
```

