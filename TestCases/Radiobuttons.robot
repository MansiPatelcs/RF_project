*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://itera-qa.azurewebsites.net/home/automation

*** Test Cases ***
Testing Radio Button and Check Boxes
    Open Browser    ${url}  ${browser}
    Maximize Browser Window
    Set Selenium Speed    2second

    # Selecting radio button
    Select Radio Button     optionsRadios   male
    Sleep    3
    Click Element    xpath:/html/body/div/div[5]/div[2]/div[1]/div[3]/label
    Sleep    3

    # Selecting checkbox
    Select Checkbox    wednesday
    Select Checkbox    monday
    Sleep    3

    Unselect Checkbox   wednesday
    Sleep    3

*** Keywords ***
