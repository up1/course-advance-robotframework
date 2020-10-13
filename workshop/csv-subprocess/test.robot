*** Settings ***
Library   EmployeeLibrary

*** Test Cases ***
Empty employees list
    [Setup]   Clear employees list
    ${result}=  Get employees list
    Should be equal   ${result}    []

Add a new employee
    [Setup]   Clear employees list
    EmployeeLibrary.Add New Employee   ./lib/employee.py  somkiat  pui
    ${result}=  Get employees list
    Should be equal    ${result}    ['somkiat pui']

*** Keywords ***
Clear employees list
    EmployeeLibrary.Clear all employees   ./lib/employee.py

Get employees list
    ${result}=  EmployeeLibrary.List all employees  ./lib/employee.py
    [Return]   ${result}
