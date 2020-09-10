*** Settings ***
Test Setup        Open Login Page using Chrome Browser
Test Teardown     Close Browser
Resource          ../pages/LoginPage.robot
Resource          ../pages/HomePage.robot
Resource          ../steps/login_steps.robot
Resource          ../Resource.robot

*** Variables ***
${email}          user1@linagora.org
${password}       password1

*** Test Cases ***
Home Page File Upload
    Login    ${email}    ${password}
    Home Page Opened
    Click Shared Space Button
    Sleep    5
