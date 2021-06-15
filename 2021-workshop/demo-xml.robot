*** Settings ***
Library    XML

*** Test Case ***
Read XML from file
    ${xml}=	Parse XML	${CURDIR}/demo.xml
    ${childrens} =	Get Elements	${xml}	.
    FOR   ${s}   IN  @{childrens}
        ${name}=  Get Element Attribute	 ${s}    name    xpath=suite
        Log to console   ${name}
    END


