*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log To Console    opening browser
Suite Teardown    Log To Console    closing browser

Test Setup    Log To Console    login to application
Test Teardown    Log To Console    logout from application

*** Test Cases ***
TC1 Prepaid Recharge
    Log To Console    This is prepaid recharge testcase
TC2 Postpaid Recharge
    Log To Console    This is postpaid recharge testcase
TC3 Search
    Log To Console    This is Search testcase
TC4 Advanced Search
    Log To Console    This is Adv search Testcase
