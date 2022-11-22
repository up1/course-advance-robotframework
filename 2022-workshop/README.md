## Robot framework workshop
Install
```
$pip install robotframework
$pip install robotframework-seleniumlibrary
```

Check library
```
$pip list
```

Run robot script
```
$robot google.robot
```

Run with report (separate by timestamp)
```
$robot -T google.robot
```

## Report and output [post-processing](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#post-processing-outputs)
Combine report
```
$robot -o 1.xml testcases
$robot -o 2.xml testcases

$rebot 1.xml 2.xml
```

Merge report
```
$rebot --merge 1.xml 2.xml
```
