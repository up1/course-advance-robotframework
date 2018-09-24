*** Settings ***
Library  calculator.py

*** Test cases ***
Add 2 and 3 = 5
    ${result} =  Add  ${2}  ${3}
    Log to console   ${result}
    Should Be Equal   ${5}   ${result}
    Should Be Equal As Integers   5   ${result}
