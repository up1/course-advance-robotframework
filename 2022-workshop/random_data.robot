*** Settings ***
Library    FakerLibrary

*** Test Cases ***
Generate 10 first name
	Log To Console   \n========
	FOR    ${index}    IN RANGE    10
		${name}=  First Name
		${email}=  Email
        Log To Console   ${index}${SPACE*5}: ${name} with ${email}
    END
