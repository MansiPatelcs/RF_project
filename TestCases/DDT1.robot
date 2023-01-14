*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/login_resourese.robot
Suite Setup    Open My Browser
Suite Teardown    close browsers
Test Template    Invalid Login

*** Test Cases ***       username                password
Right user empty pwd    admin@yourstore.com     ${EMPTY}
Right user wrong pwd    admin@yourstore.com     xyz
wrong user right pwd    adm@yourstore.com   admin
wrong user empty pwd    adm@yourstore.com   ${EMPTY}
wrong user wrong pwd    adm@yourstore.com   xyz

*** Keywords ***
Invalid login
    [Arguments]    ${username}  ${password}
    Input username  ${username}
    Input password  ${password}
    click login
    Error message should be visible