*** Settings ***
Resource    ../pages/login.robot
Resource    ../pages/error.robot

*** Test Cases ***
Login fail naja
	[Template]  Flow Login fail
		${EMPTY}   mode
		demo	   ${EMPTY}	
		DEMO       mode
		demo	   MODE	

*** Keywords ***
Flow Login fail
	[Arguments]   ${user}   ${password}
	Fill in user="${user}" and password="${password}"
	Should show error page
	Go to login page