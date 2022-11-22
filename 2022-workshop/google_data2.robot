*** Settings ***
Library     SeleniumLibrary
Test Template 	Success search flow

*** Test Cases ***
# Test case name | Input | Expect Result |
Case 01 	       บอลโลก    บอลโลก
Case 02	  	       other     other

*** Keywords ***
Success search flow
	[Arguments]  ${input}  ${expected_result}
	เข้าไปยังหน้าค้นหา
	ค้นหา   ${input}
	ต้องเจอข้อมูลของ   ${expected_result}


ค้นหา
	[Arguments]  ${keyword}
	Input Text   name:q	  ${keyword}
	Press Keys   name:q   RETURN

ต้องเจอข้อมูลของ
	[Arguments]  ${expected_result}
	Wait Until Page Contains 	${expected_result}

เข้าไปยังหน้าค้นหา
	Open Browser    https://www.google.com/		browser=chrome
	Maximize Browser Window

