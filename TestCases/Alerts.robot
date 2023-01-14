*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
HandlingAlerts
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Click Element    xpath://*[@id="HTML9"]/div[1]/button
    Sleep    5
#    Handle Alert    accept
#    Handle Alert    dismiss
#    Handle Alert    leave

#    Alert Should Be Present    Press a button!
    Alert Should Not Be Present     Press a button!