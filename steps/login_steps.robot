*** Settings ***
Resource          ../pages/LoginPage.robot

*** Keywords ***
Login
    [Arguments]    ${email}    ${password}
    Login Page Opened
    Input Email    ${email}
    Login Button Should Be Enabled
    Input Password    ${password}
    Click Login Button
