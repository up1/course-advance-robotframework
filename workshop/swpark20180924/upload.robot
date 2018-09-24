*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}   http://nervgh.github.io/pages/angular-file-upload/examples/simple/

*** Test cases ***
Upload Image 3 files
    Open upload page
    Select file   image1.jpg
    Select file   image2.jpg
    Select file   image3.jpg
    Selected file should have 3 files
    Upload file  1
    Upload file  2
    Upload file  3
    Upload should be succeed

*** Keywords ***
Select file
    [Arguments]   ${filename}
    Choose File   
    ...  xpath://div/div[2]/div[1]/input[2]
    ...  ${CURDIR}/${filename}

Selected file should have 3 files
    Wait Until Page Contains Element
    ...  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr
    Page Should Contain Element
    ...  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr
    ...  limit=3

Upload file 
    [Arguments]   ${order no}
    Click Element
    ...  xpath://*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr[${order no}]/td[5]/button[1]

Upload should be succeed
    Wait Until Page Contains Element
    ...   xpath://div[@style="width: 100%;"]

Open upload page
    Open Browser   ${URL}   browser=chrome
