*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
LoginTest

    Open Browser    ${url}  ${browser}
    LoginToApplication
    Close Browser

*** Keywords ***
loginToApplication
    Wait Until Element Is Visible   xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input
    Input Text  xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input   Admin
    Input Text  xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input   admin123
    Click Element   xpath://*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Sleep    5


