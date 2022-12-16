*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Login success with user and password
	Open login page
	Fill in user="demo" and password="mode"
	Should show welcome page

*** Keywords ***
Should show welcome page
	Wait Until Element Contains   xpath://*[@id="container"]/h1
   ...  Welcome Page  
	Page Should Contain Link   xpath://*[@id="container"]/h1/a

Fill in user="${user}" and password="${password}"
	Input Text  id:username_field  ${user}
	Input Text  id:password_field  ${password}
	Click Element  id:login_button

Open login page
	Open Browser   http://139.59.97.96:7272/   gc
	Maximize Browser Window