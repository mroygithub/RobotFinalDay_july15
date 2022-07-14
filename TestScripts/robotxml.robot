*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
Library    String
Library    ../Reusable/pom.py

# Creating a BranchZZ ....




*** Variables ***


#${pop_cou}    Data Science Course:Artificial Intelligence Course:Machine Learning Certification Course:Python Certification
#${url}    https://intellipaat.com/
#${browsername}    headlesschrome
# //h4[text()='Popular Courses']/following-sibling::p[1]/a[text()='Data Science Course']


*** Test Cases ***

Validate_Dynamix_Web_Element

    
    read_XML_Test_Data
    Open Browser   ${url}     ${browsername}
    Sleep    2
    Maximize Browser Window
    Sleep    2

    # Split Popular Courses

    
    @{subpopulerlinks}=    Split String    ${pop_cou}    :

    # To iterate through the String of Array ..@{subpopulerlinks}

    FOR    ${ele}    IN    @{subpopulerlinks}
        Log    ${ele}
        ${runtimeXpath}    pom.PopularCoursesSubLinksXpath    ${ele}
        Log To Console    ${runtimeXpath}
        Wait Until Page Contains Element    ${runtimeXpath}
        
    END

    Close All Browsers



*** Keywords ***

read_XML_Test_Data

    ${url}    pom.readXML    url
    ${browsername}    pom.readXML    browsername
    ${pop_cou}    pom.readXML    popularcourses
    Set Global Variable    ${url}
    Set Global Variable    ${browsername}
    Set Global Variable    ${pop_cou}