*** Settings ***
Library   HelloLibrary

*** Testcases ***
Testcase 01
    Try to say hi with  somkiat

Testcase 02
    Try to say hi with  somkiat
    Result Should Be  Hi, somkiat

Testcase 03
    Say Hi2
    Say Hi2  name1
    Say Hi2  name1  name2
    Say Hi2  name2=name2
    Say Hi2  name=name1
    Say Hi2  name2=name2  name=name1

Testcase 04
    Say Hi All  key=value   name=somkiat  age=30