*** Settings ***
Library    SeleniumLibrary
Test Teardown    Close Browser

*** Variables ***
${MY_URL}    https://www.google.com/
${BROWSER_TYPE}    chrome

*** Test Cases ***
Success with Search robot
	[Tags]  done  sprint01  feature_search
    Search with    robot
	Check result

Success with Search selenium
	[Tags]  testing  sprint02  feature_search
    Search with "selenium" and xxx
	Check result

*** Keywords ***
Check result
	Wait Until Element Contains   id:result-stats
    ...   ผลการค้นหาประมาณ

Search with "${keyword}" and xxx
	Search with   ${keyword}

Search with
	[Arguments]   ${keyword}
	Open Browser    ${MY_URL}
    ...   browser=${BROWSER_TYPE}
	Maximize Browser Window
	Input Text	  name:q   ${keyword}
	Press Keys    name:q   RETURN

Should show detail at wikipedia
	Wait Until Element Is Visible    
	...   xpath://*[@id="rso"]/div[2]/div/div/div[1]/div/div/div[1]/div
	Click Element   
    ...   xpath://*[@id="rso"]/div[2]/div/div/div[1]/div/div/div[1]/div/a






