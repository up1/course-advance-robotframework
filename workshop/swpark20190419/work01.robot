*** Settings ***
Library   SeleniumLibrary

*** Test Case ***
Workshop 01
    ไปยังหน้าแรก
    แสดง demo
    กลับไปยังหน้าแรก

*** Keywords ***
กลับไปยังหน้าแรก
    Wait Until Element Is Visible   id:loader
    Wait Until Element Is Not Visible   id:loader

    Wait Until Element Is Visible   
    ...  xpath://*[@id="page-2"]/section/p/a
    Click Link  Go back

แสดง demo
    Click Link   Show Page Loader

ไปยังหน้าแรก
    Open Browser   https://tympanus.net/Development/PageLoadingEffects/index.html
    ...  browser=chrome