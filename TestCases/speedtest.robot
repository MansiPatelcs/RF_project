*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
RegTest
    ${speed}=   Get Selenium Speed
    Log To Console    ${speed}
    Open Browser    http://demowebshop.tricentis.com/register   chrome
    Maximize Browser Window

#    Sleep    3
    Set Selenium Speed    1 second  # every statement delay time is 1 second

    Select Radio Button    Gender   M
    Input Text    id:FirstName  abc
    Input Text    id:LastName   xyz
    Input Text    name:Email    abc@gmial.com
    Input Text    id:Password   abc123
    Input Text    id:ConfirmPassword    abc123
    ${speed}=   Get Selenium Speed
    Log To Console    ${speed}