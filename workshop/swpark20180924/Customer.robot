*** Settings ***
Library  Collections

*** Variables ***
&{user_info_1}  email=somkiat@gmail.com
...  mobile_no=0868696209

*** Test cases ***
Test 1
    &{user_info}=  Create Dictionary
    ...  email=somkiat@gmail.com
    ...  mobile_no=0868696209
    Fill in customer information   ${user_info}

Test 2
    Fill in customer information   ${user_info_1}

*** Keywords ***
Fill in customer information
    [Arguments]  ${user}
    Log to console   ${user.email}
    Log to console   ${user.mobile_no}