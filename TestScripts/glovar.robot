*** Settings ***
Library     SeleniumLibrary
Test Teardown    CloseApp
Test Setup    LaunchMyBrowser


*** Variables ***



*** Test Cases ***
Validate_Client_Says_Text

        
       
       
        


*** Keywords ***

validate_Client_Says_False

    Click Element    //h2[text()='CLIENT SAYSMMM']

validate_Client_Says_True

    Click Element    //h2[text()='CLIENT SAYS']    

LaunchMyBrowser

        Open Browser    https://www.fleekitsolutions.com/      chrome
        Maximize Browser Window
        Sleep   2


CloseApp
        [Teardown]
        Close All Browsers

        





         








