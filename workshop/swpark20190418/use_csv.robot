*** Settings ***
Library   CSVLibrary
Library   HelloLibrary

*** Test Case ***
Read data from CSV
    ${users}=  Read file to list  user.csv
    FOR  ${user}  IN  @{users}
        Validate  ${user}[1]  ${user}[4]
    END

*** Keywords ***
Validate
    [Arguments]  ${name}  ${expected_result}
    ${result}=  Say Hi  ${name}
    Should display greeting message   ${result}  ${expected_result}
    