*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://itera-qa.azurewebsites.net/home/automation

*** Test Cases ***
Handlings Dropdown and Lists
    Open Browser    ${url}  ${browser}
    Maximize Browser Window

    Select From List By Label
    Select From List By Index
    Select From List By Value
    Sleep    3

