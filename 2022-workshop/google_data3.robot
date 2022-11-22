*** Settings ***
Library     SeleniumLibrary
Test Template 	Success search flow
Suite Setup  	เข้าไปยังหน้าค้นหา
Test Setup 		ไปยังหน้าค้นหา

*** Test Cases ***
# Test case name | Input | Expect Result |
Case 01 	       บอลโลก    บอลโลก
Case 02	  	       other     other

*** Keywords ***
Success search flow
	[Arguments]  ${input}  ${expected_result}
	ค้นหา   ${input}
	ต้องเจอข้อมูลของ   ${expected_result}
	Go To   https://www.facebook.com

ไปยังหน้าค้นหา
	Go To   https://www.google.com/

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

