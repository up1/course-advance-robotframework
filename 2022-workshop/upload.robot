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
	Wait Until Page Contains     dsfsdfsdfsdfsdf

# robot -v DATA_PATH:c:\\mydata  upload.robot