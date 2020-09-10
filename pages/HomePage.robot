*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${SHARED_SPACE_BUTTON}    id:inputEmail
${PASSWORD_FIELD}    id:inputPassword
${LOGIN_BUTTON}    //form/button

*** Keywords ***
Home Page Opened
    Wait Until Page Contains    John Doe
    Wait Until Element Is Visible    ${SHARE_SPACE_BUTTON}
    Element Should Be Visible    ${SHARE_SPACE_BUTTON}

Click Shared Space Button
    Wait Until Element Is Enabled    ${SHARED_SPACE_BUTTON}
    Element Should Be Enabled    ${SHARED_SPACE_BUTTON}
    Click Element    ${SHARED_SPACE_BUTTON}
