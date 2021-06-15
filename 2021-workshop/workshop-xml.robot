*** Settings ***
Library   XML

*** Test Cases ***
Demo with xml
    ${xml}=  Parse XML  ${CURDIR}/demo.xml
    ${suites}=  Get Child Elements  ${xml} 
    FOR  ${s}  IN  @{suites}
        ${suite_name}=  Get Element Attribute   ${s}   name 
        ${tests}=  Get Child Elements  ${s} 
        FOR  ${t}  IN  @{tests}
            ${test_name}=  Get Element Attribute   ${t}   name 
            ${status}=	Get Element	 ${t}	status
            ${status_name}=  Get Element Attribute   ${status}   status 
            Log To Console  ${suite_name} with ${test_name} [${status_name}]
        END
    END

