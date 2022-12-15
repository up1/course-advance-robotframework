*** Settings ***
Library    SeleniumLibrary
# Test Teardown    Close Browser

*** Variables ***

*** Test Cases ***
Success with Search wikipedia
    Search with robot
	Check result with robot
	Should show detail at wikipedia

*** Keywords ***
Should show detail at wikipedia
	Wait Until Element Is Visible    
	...   xpath://*[@id="rso"]/div[2]/div/div/div[1]/div/div/div[1]/div
	Click Element   
    ...   xpath://*[@id="rso"]/div[2]/div/div/div[1]/div/div/div[1]/div/a

Check result with robot
	Wait Until Element Contains   id:result-stats
    ...   ผลการค้นหาประมาณ

Search with robot
	Open Browser    https://www.google.com/
    ...   browser=chrome
	Maximize Browser Window
	Input Text	  name:q   robot
	Press Keys    name:q   RETURN



