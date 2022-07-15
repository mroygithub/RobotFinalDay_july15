*** Settings ***

Library    SeleniumLibrary
Test Setup    Launch_My_Browser
Test Teardown    Close_My_Browser
Library    ../Reusable/pom.py
Library    String
Variables    ../Reusable/pom.py


*** Variables ***


*** Test Cases ***

kubernetes_TestScenario_04

    CheckkubernetesLogo

    # Click on Training Link From Top Header Navigations ...

    Click Element    ${Training_Link}

    Sleep    3

    ValidateFooterLinks

    # Click on Git Hub Link

    Click Element    ${gitLink_xpath}

    Sleep    3

    # Validate Git Page ....

    validateGitPage

*** Keywords ***

CheckkubernetesLogo

    ${footerLinks}    pom.readXML    footerlinks
    Set Global Variable    ${footerLinks}

Launch_My_Browser

     Open Browser    https://kubernetes.io/    Chrome
    Maximize Browser Window
    Sleep    2

ValidateFooterLinks

    # Validate Footer Links ...

    @{subfooterlinks}    Split String     ${footerLinks}    ,
    FOR    ${element}    IN    @{subfooterlinks}
        Log    ${element}
        ${runtimexpath}    pom.home_footer_xpath    ${element}
        Wait Until Page Contains Element    ${runtimexpath}   
    END


validateGitPage

     Switch Window    locator=NEW
    ${currentURL}    Get Location
    Should Be True    "kubernetes" in """${currentURL}"""
    Close Browser
    Sleep    3

Close_My_Browser 
    Close All Browsers   