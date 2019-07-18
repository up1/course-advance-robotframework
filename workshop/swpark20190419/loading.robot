*** Settings ***
Library  SeleniumLibrary

*** Test Case ***
Working with loading data in page
    ไปยังหน้า demo
    กลับไปยังหน้าแรก

*** Keywords ***
ไปยังหน้า demo
    Open Browser   https://tympanus.net/Development/PageLoadingEffects/
    ...   browser=chrome
    Click Element   xpath://*[@id="page-1"]/section[1]/div[2]/p[2]/a

กลับไปยังหน้าแรก
    Wait Until Element Is Visible   xpath://*[@id="loader"]
    Wait Until Element Is Not Visible   xpath://*[@id="loader"]
    Wait Until Element Is Visible   xpath://*[@id="page-2"]/section/p/a
    Click Element  xpath://*[@id="page-2"]/section/p/a
