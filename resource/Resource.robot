*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN_PAGE}     https://demo.linshare.org/

*** Keywords ***
Open Login Page Using Chrome Browser
    Open Browser    ${LOGIN_PAGE}    Chrome
    Maximize Browser Window
