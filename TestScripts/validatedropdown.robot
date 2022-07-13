*** Settings ***

Library    SeleniumLibrary


*** Variables ***

*** Test Cases ***

Validate_Drop_Down_Options

    Open Browser    https://techedtrainings.com/contact/    Chrome
    Maximize Browser Window
    Sleep    4
    Wait Until Page Contains Element    menu-363
    Select From List By Value    menu-363    DevOps
    Sleep    2
    Select From List By Value    menu-363    Data Science
    Sleep    2
    Select From List By Value    menu-363    Java & Spring
    Sleep    2
    Select From List By Index    menu-363    7
    Sleep    2
    Select From List By Index    menu-363    6
    Sleep    2
    Select From List By Index    menu-363    5
    Sleep    2
    
    Close All Browsers


