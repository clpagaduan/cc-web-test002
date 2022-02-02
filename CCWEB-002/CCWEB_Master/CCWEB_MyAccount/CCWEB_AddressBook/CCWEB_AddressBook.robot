*** Settings ***
Library       SeleniumLibrary
Resource      ../../../CCWEB_Global_Variables.resource
Resource      ../../../CCWEB_Global_Keywords.resource

Resource      AddressBook_Variables.resource
Resource      AddressBook_Keywords.resource

# Test Setup        Open CC Website
# Test Teardown     Close Browser

*** Test Cases ***

Verify If User Can Access Address Book
    [Tags]    Smoke
    Open CC Website
    Login To CC Website                                ${login_email}    ${login_pw}    ${login_username}
    Click Element    ${MyAccount_AddressBook}
    Wait Until Page Contains    ${AddressBook_Title}   5
    
Verify If User Can Modify Address
    Get Address
    Clear And Enter New Address
    Save New Address
    Verify If Address Was Saved
    Revert Original Values
    Close Browser