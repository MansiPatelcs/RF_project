*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
LoginTC
    Open Browser    https://opensource-demo.orangehrmlive.com/  chrome
    Maximize Browser Window
    Sleep    5
    Input Text    name:username     Admin
    Input Text    name:password     admin123

    Capture Element Screenshot    xpath://*[@id="app"]/div[1]/div/div[1]/div/div[1]/img     C:/Users/Mansi Patel/PycharmProjects/pythonProject1/pythonProject/RF_project/logo.png
    Capture Page Screenshot    C:/Users/Mansi Patel/PycharmProjects/pythonProject1/pythonProject/RF_project/LoginTC.png