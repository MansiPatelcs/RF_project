*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${login url}    https://admin-demo.nopcommerce.com
${browser}      chrome

*** Keywords ***
open my browser
    Open Browser    ${login url}    ${browser}
    Maximize Browser Window

close browsers
    Close All Browsers

open Login page
    Go To    ${login url}

Input username
    [Arguments]    ${username}
    Input Text    id:Email      ${username}

Input password
    [Arguments]    ${password}
    Input Text    id:Password       ${password}

click login
    Click Element    xpath://button[@type='submit']

click logout
    Click Link    Click Logout

Error message should be visible
    Page Should Contain     Login was unsuccessful

Dashboard page should visible
    Page Should Contain    Dashboard