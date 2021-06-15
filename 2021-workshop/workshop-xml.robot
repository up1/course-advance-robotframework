*** Settings ***
Library   XML

*** Test Cases ***
Demo with xml
    ${xml}=  Parse XML  ${CURDIR}/demo.xml
    ${suites}=  Get Child Elements  ${xml} 
    FOR  ${s}  IN  @{suites}
        ${name}=  Get Element Attribute   ${s}   name 
        Log To Console  ${name}
    END

