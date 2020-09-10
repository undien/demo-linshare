*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${EMAIL_FIELD}    id:inputEmail
${PASSWORD_FIELD}    id:inputPassword
${LOGIN_BUTTON}    //form/button

*** Keywords ***
Login Page Opened
    Wait Until Element Is Visible    ${EMAIL_FIELD}
    Element Should Be Visible    ${EMAIL_FIELD}
    Wait Until Element Is Visible    ${PASSWORD_FIELD}
    Element Should Be Visible    ${PASSWORD_FIELD}
    Wait Until Element Is Visible    ${LOGIN_BUTTON}
    Element Should Be Visible    ${LOGIN_BUTTON}

Input Email
    [Arguments]    ${email}
    Wait Until Element Is Enabled    ${EMAIL_FIELD}
    Input Text    ${EMAIL_FIELD}    ${email}

Input Password
    [Arguments]    ${password}
    Wait Until Element Is Enabled    ${PASSWORD_FIELD}
    Input Text    ${PASSWORD_FIELD}    ${password}

Login Button Should Be Enabled
    Wait Until Element Is Enabled    ${LOGIN_BUTTON}
    Element Should Be Enabled    ${LOGIN_BUTTON}

Click Login Button
    Wait Until Element Is Enabled    ${LOGIN_BUTTON}
    Click Element    ${LOGIN_BUTTON}
