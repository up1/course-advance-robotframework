*** Keywords ***
Check Error
	Wait Until Element Contains   xpath://*[@id="container"]/h1
   ...  Error Page  
	Wait Until Element Contains   xpath://*[@id="container"]/p
   ...  Login failed. Invalid user name and/or password.
	Page Should Not Contain Link   xpath://*[@id="container"]/p/a
