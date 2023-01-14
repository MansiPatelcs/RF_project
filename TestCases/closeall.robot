*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MyTestcase
    Open Browser    http://demowebshop.tricentis.com/register   chrome
    Maximize Browser Window

    Open Browser    https://itera-qa.azurewebsites.net/home/automation  chrome
    Maximize Browser Window

#    Close Browser    # close browser whichever open at last
    Close All Browsers  # close all browser at a time