*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${expectedurl}          https://www.webucator.com/
${expectTitle}        "Online and Onsite Instructor-led Training Classes | Webucator"


*** Test Cases ***
Test_Webucator

    Open Browser    https://www.webucator.com/  gc
    Maximize Browser Window
    #checking sign
    Wait Until Page Contains Element    //a[contains(.,' SIGN IN')]
    #checking logo
    Wait Until Page Contains Element    (//img[@alt='Webucator Logo'])[2]
    # verify URL
    ${PageUrl}=       Get Location
    Log To Console    ${PageUrl}
    Should Be True    """${PageUrl}"""=="""${expectedurl}"""
    #Verify Title
    Wait For Condition      == ${expectTitle}
    Close All Browsers



*** Keywords ***