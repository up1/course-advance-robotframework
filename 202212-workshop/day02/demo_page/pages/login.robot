*** Keywords ***
Open
	Go To  http://139.59.97.96:7272

Check
	Wait Until Element Contains   xpath://*[@id="container"]/h1  
    ...   Login Page
	Title Should Be    Login Page
	Wait Until Page Contains Element   id:username_field
	Wait Until Page Contains Element   id:password_field
	Wait Until Page Contains Element   id:login_button
	
Submit
	[Arguments]  ${user}  ${password}
	Input Text   id:username_field    ${user}
	Input Text   id:password_field    ${password}
	Click Element   id:login_button

