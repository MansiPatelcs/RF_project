*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MouseActions
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    Maximize Browser Window
#    Click Element    xpath:/html/body/div/section/div/div/div/p/span
#    Right click/open context menu
    Open Context Menu    xpath:/html/body/div/section/div/div/div/p/span
    Sleep    3

#    double click
    Go To   https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath://*[@id="HTML10"]/div[1]/button
    Sleep    5

#    drag & drop
    Go To    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop    id:sourseele          id:targetele
    Close Browser