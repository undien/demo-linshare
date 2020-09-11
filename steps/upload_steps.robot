*** Settings ***
Resource          ../pages/HomePage.robot

*** Keywords ***
Select Workgroup
    Home Page Opened
    Click Shared Space Button
    File List Opened
    Click Workgroup Item
    Workgroup Opened

Upload Files
    Click File Upload
    Verify Upload
