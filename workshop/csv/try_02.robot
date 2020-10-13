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