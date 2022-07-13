*** Settings ***

Library    SeleniumLibrary


*** Variables ***

${linkTextTovalidate}    Machine Learning with TensorFlow on Google Cloud Platform

*** Test Cases ***

Print_All_Links_Using_Robot

    Open Browser    https://techedtrainings.com/courses/    Chrome
    Maximize Browser Window
    Sleep    2
    ${AllLinksCount}=    Get Element Count    xpath://a
    Log To Console    ${AllLinksCount}
    Should Be True    ${AllLinksCount}==156

    # To Print All The Links ...


    ${all_links}=    Get WebElements    xpath://a   
    FOR    ${element}    IN    @{all_links}
        ${runtimelinks}    Get Text    ${element}
        Log To Console    ${runtimelinks}
        Exit For Loop If    """${linkTextTovalidate}"""=="""${runtimelinks}"""
        
    END








    Close All Browsers


