*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/resources.robot

*** Variables ***
${browser}  chrome
${url}  https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
TC1
#    Launchbrowser
#    Launchbrowser   ${url}  ${browser}
    ${pagetitle}=   Launchbrowser   ${url}  ${browser}
    Log To Console    ${pagetitle}
    Log    ${pagetitle}

    Sleep    5
    Input Text    name:username     Admin
    Input Text    name:password     admin123

#*** Keywords ***
#Launchbrowser
#    Open Browser    ${url}  ${browser}
#    Maximize Browser Window

#Launchbrowser
#    [Arguments]    ${appurl}    ${appbrowser}
#    Open Browser    ${appurl}  ${appbrowser}
#    Maximize Browser Window

#Launchbrowser
#    [Arguments]    ${appurl}    ${appbrowser}
#    Open Browser    ${appurl}  ${appbrowser}
#    Maximize Browser Window
#    ${title}=   Get Title
#    [Return]    ${title}