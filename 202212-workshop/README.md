# Workshop

### Install robotframework and selenium library
```
$pip install --upgrade robotframework
$pip install --upgrade robotframework-seleniumlibrary

$robot
```

### Working with variables

demo-01.robot
```
*** Variables ***
${MY_URL}    https://www.google.com/
${BROWSER_TYPE}    chrome
```

Run
```
$robot -v MY_URL:xxxx -v BROWSER_TYPE:yyyy demo-01.robot
```

### Read variables from file YAML
```
$cd day01/variables
$robot -V db.yaml demo.robot
```

### Working with tag
demo-01.robot
```
*** Test Cases ***
Success with Search robot
	[Tags]  done  sprint01  feature_search
  Search with    robot
	Check result

Success with Search selenium
	[Tags]  testing  sprint02  feature_search
  Search with "selenium" and xxx
	Check result
```

Run with tag `testing`
``` 
$robot -i testing demo-01.robot
```

Run without tag `testing`
``` 
$robot -e testing demo-01.robot
```
