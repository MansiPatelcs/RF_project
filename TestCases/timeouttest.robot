*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
RegTest
    Open Browser    http://demowebshop.tricentis.com/register   chrome
    Maximize Browser Window
    ${timeout}  Get Selenium Timeout
    Log To Console  ${timeout}

    Wait Until Page Contains    Registration    # default timeout 5 seconds
    Set Selenium Timeout    10 seconds
    Select Radio Button    Gender   M
    Input Text    id:FirstName  abc
    Input Text    id:LastName   xyz
    Input Text    name:Email    abc@gmial.com
    Input Text    id:Password   abc123
    Input Text    id:ConfirmPassword    abc123
