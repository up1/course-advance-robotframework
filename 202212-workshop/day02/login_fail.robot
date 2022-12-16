*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Login fail with empty username
	Open login page
	Fill in user="${EMPTY}" and password="mode"
	Should show error page

Login fail with empty password
	Open login page
	Fill in user="demo" and password="${EMPTY}"
	Should show error page

*** Keywords ***
Should show error page
	Wait Until Element Contains   xpath://*[@id="container"]/h1
   ...  Error Page  
	Wait Until Element Contains   xpath://*[@id="container"]/p
   ...  Login failed. Invalid user name and/or password.
	Page Should Not Contain Link   xpath://*[@id="container"]/p/a

Fill in user="${user}" and password="${password}"
	Input Text  id:username_field  ${user}
	Input Text  id:password_field  ${password}
	Click Element  id:login_button

Open login page
	Open Browser   http://139.59.97.96:7272/   gc
	Maximize Browser Window