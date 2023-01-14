*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Scrollingtest
    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    Maximize Browser Window
#    Execute Javascript    window.scrollTo(0,1500)
#    Scroll Element Into View    xpath://*[@id="content"]/div[2]/div[2]/table[2]/tbody/tr[48]/td[1]/img
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)  # end of the page
    Sleep    5
    Execute Javascript    window.scrollTo(0,-document.body.scrollHeight)    #starting page
    Sleep    5

