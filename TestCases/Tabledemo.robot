*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TestTable
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Sleep    5
    ${rows}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    ${columns}=     Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th
    Log To Console    ${rows}
    Log To Console    ${columns}

    ${data}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    Log To Console    ${data}

    Table Column Should Contain    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[1]/th[2]    2   Author
    Table Row Should Contain    xpath://*[@id="HTML1"]/div[1]/table/tbody/tr[7]/td[1]   7   Master In JS
    Table Cell Should Contain    xpath://table[@name='BookTable']/tbody/tr[5]/td[2]     5   2   Mukesh
#    Table Header Should Contain     xpath://table[@name='BookTable']/tbody/tr[1]/th[1]   BookName

    Close Browser