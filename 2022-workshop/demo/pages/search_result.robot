*** Keywords ***
ต้องเจอข้อมูลของ
	[Arguments]  ${expected_result}
	Wait Until Page Contains 	${expected_result}