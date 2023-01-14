*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/loginkeywords.robot

*** Variables ***
${browser}  chrome
${siteurl1}     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${user}     Admin
${pwd}      admin123

*** Test Cases ***
Login test
    open my browser     ${Siteurl1}  ${browser}
    Sleep    5
    Enter username  ${user}
    Enter password  ${pwd}
    Click signin
    Sleep    5
    Verify Successfull login
    close browser

