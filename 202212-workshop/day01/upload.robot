*** Settings ***
Library   SeleniumLibrary
Suite Setup   Open upload page

*** Test Cases ***
Success with upload 3 files
	Choose file with "1.txt" and check
	Choose file with "2.txt" and check
	Choose file with "3.txt" and check
	Check result after uploaded 3 files
	Upload first file and check upload progress
	Upload second file and check upload progress
	Upload third file and check upload progress

*** Keywords ***
Choose file with "${target_file}" and check
	# https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#variable-file-as-yaml
	Choose File   xpath://div[1]/input[2]
    ...   ${CURDIR}${/}data_test/${target_file}


Open upload page
	Open Browser    http://nervgh.github.io/pages/angular-file-upload/examples/simple/
    ...   browser=chrome
	Maximize Browser Window
