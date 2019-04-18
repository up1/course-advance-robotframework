*** Settings ***
Library  HelloLibrary.py

*** Test Case ***
Case 01
    ${result}=  Say Hi  somkiat
    Hello in console   ${result}
    # Log To Console  ${result}
    Should Be Equal  ${result}  Hello somkiat
    Should display greeting message   ${result}  Hello somkiat