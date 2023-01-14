*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
GetAllLiknsTest
    Open Browser    https://opensource-demo.orangehrmlive.com/  chrome
    Maximize Browser Window
    Sleep    5

    ${AllLinksCount}=   Get Element Count    xpath://a
    Log To Console    ${AllLinksCount}

    @{linkitem}     Create List

        FOR    ${i}    IN RANGE    1   ${AllLinksCount}
            ${linktext}=    Get Text    xpath:(//a)[${i}]
            Log To Console    ${linktext}
        END