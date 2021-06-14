*** Settings ***
Library    SeleniumLibrary
Library    csv_library.py

*** Test Cases ***
Search data from google
    ${keywords}=                Read                     keywords.csv
    FOR                         ${keyword}               IN              @{keywords}
    Search with '${keyword}'
    END

*** Keywords ***
Search with '${keyword}'
    Open Browser                http://www.google.com    chrome
    Input Text                  name:q                   ${keyword}


