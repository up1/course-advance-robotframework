*** Keywords ***
เข้าไปยังหน้าค้นหา
	Open Browser    https://www.google.com/		browser=chrome
	Maximize Browser Window

ค้นหา
	[Arguments]  ${keyword}
	Input Text   name:q	  ${keyword}
	Press Keys   name:q   RETURN