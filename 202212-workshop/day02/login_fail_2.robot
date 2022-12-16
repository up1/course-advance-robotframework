*** Settings ***
Library   SeleniumLibrary
Suite Setup     Open login page
Test Teardown   Go to login page
Test Template   Flow Login fail
Default Tags    day2

*** Test Cases ***
#--------------|----------|-----------#
#   Test name  |  User    |  Password #
#-------------------------------------#
Empty username   ${EMPTY}   mode
Empty password   demo       ${EMPTY}
Wrong username	 DEMO		mode
Wrong password	 demo       MODE
#-------------------------------------#
*** Keywords ***
Flow Login fail
	[Arguments]   ${user}   ${password}
	Fill in user="${user}" and password="${password}"
	Should show error page

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

Go to login page
	Go To   http://139.59.97.96:7272/