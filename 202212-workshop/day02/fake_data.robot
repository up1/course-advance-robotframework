*** Settings ***
Library    FakerLibrary

*** Test Cases ***
FakerLibrary Words Generation
	Log To Console    \n
	FOR    ${index}    IN RANGE    10
		${fname}=  First Name
        ${email}=   Company Email
    	Log To Console    ${fname},${email}
    END


