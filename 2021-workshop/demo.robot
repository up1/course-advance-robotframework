*** Settings ***
Library    csv_library.py

*** Test Cases ***
Design process
    ${result}=         Read       users.csv
    Write              $result    new.csv
    Should Be Equal    1          2

Design process2
    ${result}=         Read       users.csv
    Write              $result    new.csv
    Should Be Equal    1          1

