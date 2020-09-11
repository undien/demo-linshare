*** Settings ***
Test Setup        Open Login Page using Chrome Browser
Test Teardown     Close Browser
Resource          ../steps/login_steps.robot
Resource          ../steps/upload_steps.robot
Resource          ../resource/Resource.robot

*** Variables ***
${email}          user1@linshare.org
${password}       password1

*** Test Cases ***
Home Page File Upload
    Login    ${email}    ${password}
    Select workgroup
    Upload Files
