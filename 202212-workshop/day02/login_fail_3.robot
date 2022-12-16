*** Settings ***
Library   SeleniumLibrary
Resource        x.robot
Suite Setup     Open login page
Default Tags    day2

*** Test Cases ***
Login fail naja
	[Template]  Flow Login fail
	#------------|--------------#
	#   user     |  password    #
	#---------------------------#
		${EMPTY}   mode
		demo	   ${EMPTY}	
		DEMO       mode
		demo	   MODE	
	#---------------------------#

*** Keywords ***
Flow Login fail
	[Arguments]   ${user}   ${password}
	x.Fill in user="${user}" and password="${password}"
	x.Should show error page
	x.Go to login page
