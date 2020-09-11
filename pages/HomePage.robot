*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${SHARED_SPACE_BUTTON}    //span[contains(text(),'Shared space')]
${LIST_FIELD}     //table[@id='file-list-table']//span[contains(text(),'customer1')]
${ADD_BUTTON}     //a[contains(@class,'add-menu-group')]
${ROOT_LABEL}     //div[@id='root-level']//*[contains(@class,'set-ellipsis')]
${UPLOAD_BUTTON}    //a[contains(.,'File upload')]/following-sibling::input[1]
${UPLOAD_ITEM1}    //table[@id='file-list-table']//span[contains(text(),'test1.txt')]
${UPLOAD_ITEM2}    //table[@id='file-list-table']//span[contains(text(),'test2.txt')]

*** Keywords ***
Home Page Opened
    Wait Until Location Contains    home    10000
    Wait Until Page Contains    John Doe    10000
    Wait Until Element Is Visible    ${SHARED_SPACE_BUTTON}
    Element Should Be Visible    ${SHARED_SPACE_BUTTON}

Click Shared Space Button
    Wait Until Element Is Enabled    ${SHARED_SPACE_BUTTON}
    Element Should Be Enabled    ${SHARED_SPACE_BUTTON}
    Click Element    ${SHARED_SPACE_BUTTON}

File List Opened
    Wait Until Location Contains    sharedspace    10000
    Wait Until Element Is Visible    ${LIST_FIELD}
    Element Should Be Visible    ${LIST_FIELD}

Click Workgroup Item
    Wait Until Element Is Enabled    ${LIST_FIELD}
    Element Should Be Enabled    ${LIST_FIELD}
    Click Element    ${LIST_FIELD}

Workgroup Opened
    Wait Until Location Contains    workgroups    10000
    Wait Until Page Contains    customer1    10000

Click File Upload
    Wait Until Element Is Enabled    ${ADD_BUTTON}
    Element Should Be Enabled    ${ADD_BUTTON}
    Click Element    ${ADD_BUTTON}
    Wait Until Element Is Enabled    ${UPLOAD_BUTTON}
    Element Should Be Enabled    ${UPLOAD_BUTTON}
    Choose File    ${UPLOAD_BUTTON}    ${CURDIR}/import/test1.txt \n ${CURDIR}/import/test2.txt

Verify Upload
    Wait Until Element Is Visible    ${UPLOAD_ITEM1}    10000
    Element Should Be Visible    ${UPLOAD_ITEM1}
    Wait Until Element Is Visible    ${UPLOAD_ITEM2}    10000
    Element Should Be Visible    ${UPLOAD_ITEM2}
