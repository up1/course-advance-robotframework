*** Settings ***
Library    SeleniumLibrary
Library    csv_library.py

*** Test Cases ***
Search data from google
    ${keywords}=      Read          keywords.csv
    FOR               ${keyword}    IN              @{keywords}
    Log To Console    ${keyword}
    END


