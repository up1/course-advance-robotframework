*** Settings ***
Library   SeleniumLibrary

*** Testcases ***
Stock seraching
    Open Browser
    ...  chrome://downloads/
    ...  browser=chrome
    Go to  https://www.set.or.th
    Go to  chrome://downloads/
#     ${width}  ${height}=	
#     ...  Get Window Size
#     Log to console   width=${width}\n
#     Log to console   height=${height}\n

#     Set Window Size    1920    1080
#     Input Text  id:txtSymbolLG  bbl
#     Press Key   id:txtSymbolLG  \\13
#     Check Stock Detail

# *** Keywords ***
# Check Stock Detail
#     Check open market #1
#     Check yesterday price

# Check open market #1
#     Wait Until Element Contains
#     ...  xpath://*[@id="quote-body1"]/div/div[1]/div[1]
#     ...  สถานะตลาด : Open(I)

# Check yesterday price
#     Wait Until Element Contains
#     ...  xpath://*[@id="quote-body1"]/div/div[1]/div[6]/div[2]
#     ...  209.00

