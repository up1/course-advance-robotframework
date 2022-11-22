*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${DATA_PATH}   /Users/somkiat/data/slide/robotframework/advance-robot-course/2022-workshop

*** Test Cases ***
Case 01
	Open Browser    http://nervgh.github.io/pages/angular-file-upload/examples/simple/ 
    ...   browser=chrome
	Choose File    xpath://div[1]/input[2] 	${DATA_PATH}/uploads/1.png
	Choose File    xpath://div[1]/input[2] 	${DATA_PATH}/uploads/2.png
	# Queue length: 2 
	# //*[@id="ng-app"]/body/div/div[2]/div[2]/p
	Wait Until Element Contains   xpath://div[2]/p 	Queue length: 2

	Wait Until Element Is Visible	xpath://div[2]/div[2]/p
	${result}=	Get Text	xpath://div[2]/div[2]/p
	Should Be Equal     Queue length: 2     ${result}
	Should Match Regexp	   ${result}	Queue length:${SPACE}\\d+
	# Upload 1
	# Upload 2


# robot -v DATA_PATH:c:\\mydata  upload.robot