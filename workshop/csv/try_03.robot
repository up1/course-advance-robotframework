*** Settings ***
Library    EmployeeLibrary

*** Test Cases ***
Empty employees list
    [Setup]   Clear employees list
    ${result}=  Get employees list
    Should Be Empty    ${result}

*** Keywords ***
Clear employees list
    EmployeeLibrary.Remove all employees

Get employees list
    ${result}=  EmployeeLibrary.List employees
    [Return]   ${result}