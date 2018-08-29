*** Settings ***
Library   HelloLibrary

*** Testcases ***
Test case 02
    My name is "somkiat", i am "30" years old

Test case 01
    Try to say with
    Try to say with   somkiat
    Try to say with   name=somkiat
    Try to say with   age=25
    Hi all   age=25  gender=male
