*** Settings ***
Library    SeleniumLibrary
Variables  ../pageobject/locators.py

*** Keywords ***
open my browser
    [Arguments]    ${Siteurl1}  ${browser}
    Open Browser    ${Siteurl1}     ${browser}
    Maximize Browser Window

Enter username
    [Arguments]    ${username}
    Input Text    ${txt_loginUsername}  ${username}

Enter password
    [Arguments]    ${password}
    Input Text    ${txt_loginPassword}  ${password}

Click signin
    Click Button    ${btn_signIn}

Verify Successfull login
    Title Should Be     OrangeHRM

close browser
    Close All Browsers


