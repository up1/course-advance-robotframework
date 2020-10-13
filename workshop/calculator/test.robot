*** Settings ***
Library   CalculatorLibrary

*** Test Cases ***
Push one button
    CalculatorLibrary.Push Button  1
    CalculatorLibrary.Result Should Be    1

Push multiple buttons
    CalculatorLibrary.Push button    1
    CalculatorLibrary.Push button    +
    CalculatorLibrary.Push button    2
    CalculatorLibrary.Push button    =
    CalculatorLibrary.Result should be    3

Push long input
    CalculatorLibrary.Push Buttons   1+2+3=
    CalculatorLibrary.Result should be    6

