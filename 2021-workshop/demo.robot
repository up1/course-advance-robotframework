*** Settings ***
Library    csv_library.py

*** Test Cases ***
Design process
    ${result}=    Read       users.csv
    Write         $result    new.csv


