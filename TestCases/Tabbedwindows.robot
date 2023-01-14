*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login  chrome
    Sleep    5
    Click Link    OrangeHRM, Inc

    Switch Window    title=OrangeHRM HR Software | Free & Open Source HR Software | HRMS | HRIS | OrangeHRM
    Click Element    xpath://*[@id="navbarSupportedContent"]/div[2]/ul/li[1]/a/button
    Sleep    3
    Close All Browsers