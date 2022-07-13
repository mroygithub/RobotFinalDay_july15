*** Settings ***

Library    SeleniumLibrary
#Suite Setup    Launch_My_Browser  
#Suite Teardown      Close_My_Browser

Test Setup    Launch_My_Browser
Test Teardown    Close_My_Browser


*** Variables ***

${linkTextTovalidate}    Machine Learning with TensorFlow on Google Cloud Platform

*** Test Cases ***

Handle_HTML_TABLE_BY_ROBOT

    ${table_row_count}    Get Element Count    //table[@name='BookTable']/tbody/tr
    Log To Console    ${table_row_count}

    ${table_column_count}    Get Element Count    //table[@name='BookTable']/tbody/tr[1]/th
    Log To Console    ${table_column_count}

    ${read_Table_data}    Get Text    //table[@name='BookTable']/tbody/tr[1]/th[1]
    Log To Console    ${read_Table_data}
    ${read_Table_data}    Get Text    //table[@name='BookTable']/tbody/tr[1]/th[2]
    Log To Console    ${read_Table_data}
    ${read_Table_data}    Get Text    //table[@name='BookTable']/tbody/tr[1]/th[3]
    Log To Console    ${read_Table_data}
    ${read_Table_data}    Get Text    //table[@name='BookTable']/tbody/tr[1]/th[4]
    Log To Console    ${read_Table_data}

    Table Column Should Contain    //table[@name='BookTable']    4    2000
    Table Column Should Contain    //table[@name='BookTable']    3    Selenium
    Table Column Should Contain    //table[@name='BookTable']    1    Master In Selenium


    Table Row Should Contain    //table[@name='BookTable']    2    Learn Selenium
    Table Row Should Contain    //table[@name='BookTable']    4    Animesh


    Table Cell Should Contain    //table[@name='BookTable']    7    1    Master In JS
    Table Cell Should Contain    //table[@name='BookTable']    3    4    500



    Table Header Should Contain    //table[@name='BookTable']    BookName
    Table Header Should Contain    //table[@name='BookTable']    Price


   
    





*** Keywords ***


Launch_My_Browser

     Open Browser    https://testautomationpractice.blogspot.com/    Chrome
    Maximize Browser Window
    Sleep    2

Close_My_Browser 
    Close All Browsers   
