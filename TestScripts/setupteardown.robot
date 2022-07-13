*** Settings ***

Library    SeleniumLibrary
Library    ../Reusable/pom.py
#Suite Setup    Launch_My_Browser  
#Suite Teardown      Close_My_Browser

Test Setup    Launch_My_Browser
Test Teardown    Close_My_Browser


*** Variables ***

${linkTextTovalidate}    Machine Learning with TensorFlow on Google Cloud Platform

*** Test Cases ***

Validate_CheckBox_Checked_Or_Not_09876

    
    # /Users/mithunroy/Documents/Robot_Training/selenium-screenshot-1.png


    ${myImagePath}    pom.myImahePath        selenium-screenshot-5.png
    Choose File    file-upload    ${myImagePath}
    Sleep    4
    Click Element     file-submit
    Sleep    10


    # /Users/mithunroy/Documents/Robot_Training/selenium-screenshot-1.pngB





*** Keywords ***


Launch_My_Browser

     Open Browser    https://the-internet.herokuapp.com/upload    Chrome
    Maximize Browser Window
    Sleep    2

Close_My_Browser 
    Close All Browsers   
