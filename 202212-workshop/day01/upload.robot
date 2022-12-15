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
Upload first file and check upload progress
	Click Element  xpath://table/tbody/tr[1]/td[5]/button[1]
	Wait Until Page Contains Element   xpath://div[@style="width: 33%;"]

Upload second file and check upload progress
	Click Element  xpath://table/tbody/tr[2]/td[5]/button[1]
	Wait Until Page Contains Element   xpath://div[@style="width: 67%;"]

Upload third file and check upload progress
	Click Element  xpath://table/tbody/tr[3]/td[5]/button[1]
	Wait Until Page Contains Element   xpath://div[@style="width: 100%;"]

Check result after uploaded 3 files
	Wait Until Element Contains   xpath://div/div[2]/div[2]/p
	...   Queue length: 3

Choose file with "${target_file}" and check
	# https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#variable-file-as-yaml
	Choose File   xpath://div[1]/input[2]
    ...   ${CURDIR}${/}data_test/${target_file}


Open upload page
	Open Browser    http://nervgh.github.io/pages/angular-file-upload/examples/simple/
    ...   browser=chrome
	Maximize Browser Window
