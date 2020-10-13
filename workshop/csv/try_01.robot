*** Settings ***
Documentation    Test the employee with python script
Library    Collections
Library    employee_final.py

*** Test Cases ***
Empty employees list
    [Setup]   Clear employees list
    ${result}=  Get employees list
    Should Be Empty    ${result}

Add a new employee
    [Setup]   Clear employees list
    employee_final.Add Employee   somkiat  pui
    ${result}=  Get employees list
    ${expected}=  Create List	somkiat pui
    Lists Should Be Equal    ${result}    ${expected}

*** Keywords ***
Clear employees list
    employee_final.Remove All Employees

Get employees list
    ${result}=  employee_final.List Employees
    [Return]   ${result}