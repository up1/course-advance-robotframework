*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
ค้นหาบอลโลกเจอใน google
	เข้าไปยังหน้าค้นหา
	ค้นหา   บอลโลก
	ต้องเจอข้อมูลของ   บอลโลก

ค้นหา other เจอใน google
	เข้าไปยังหน้าค้นหา
	ค้นหา   other
	ต้องเจอข้อมูลของ   other
	นาย A เข้ามาค้นหา "other" แล้วต้องเจอข้อมูล "other"

*** Keywords ***
นาย A เข้ามาค้นหา "${keyword}" แล้วต้องเจอข้อมูล "${expected_result}"
	Input Text   name:q	  ${keyword}
	Press Keys   name:q   RETURN
	Wait Until Page Contains 	${expected_result}

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

