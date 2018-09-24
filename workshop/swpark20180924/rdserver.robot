*** Settings ***
Library   SeleniumLibrary

*** Test cases ***
ยื่นแบบ online ไม่ได้
    Open tax online page
    Open manual of compatability view setting
    Close warning popup

*** Keywords ***
Close warning popup
    Select Window
    Click Element   
    ...  xpath://*[@id="lightboxdialog"]/button
    
Open manual of compatability view setting
    Select Frame   xpath://*[@id="lightboxdialog"]/p/iframe
    Click Link    คลิก
    

Open tax online page
    Open Browser
    ...  https://rdserver.rd.go.th/publish/index.php?page=taxonline
    ...  browser=chrome