*** Settings ***
Library     SeleniumLibrary
*** Variables ***

${title}    Home - Docker

*** Test Cases ***

Verify Google Application

    Open Browser    https://www.docker.com      Chrome
    Maximize Browser Window
    ${run_tile}=    Get Title
    Should Be True    """${run_tile}""" == """${title}"""
    Close All Browsers