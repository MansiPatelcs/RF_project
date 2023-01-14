*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TestingFrames
    Open Browser    https://seleniumhq.github.io/selenium/docs/api/java/index   chrome
    Click Link    xpath:/html/body/header/nav/div[1]/div[2]/ul[1]/li[1]/a

    Select Frame    packageListFrame
    Click Link    org.openqa.selenium
    Unselect Frame
    Sleep    3

    Select Frame    packageFrame
    Click Link    WebDriver
    Unselect Frame
    Sleep    3

    Select Frame    classFrame
    Click Link    Help
    Unselect Frame

    Close Browser
