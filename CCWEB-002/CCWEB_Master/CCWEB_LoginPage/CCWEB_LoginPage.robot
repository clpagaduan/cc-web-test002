*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCWEB_Global_Variables.resource
Resource      ../../CCWEB_Global_Keywords.resource
Resource      LoginPage_Variables.resource

Test Setup        Open CC Website
Test Teardown     Close Browser



*** Test Cases ***
#TO DO
#Reset Password
#Login via Username

Verify If The User Can Login Using Correct Email
    [Tags]    Smoke
    Login To CC Website    ${login_email}    ${login_pw}    ${login_username}
    
# Verify If The User Can Login Using Correct Username
    # Click Element                    ${CCWEB_LoginLink}
    # Wait Until Page Contains         Secure Login
    # Click Element                    ${CCWEB_LoginViaUsername}
    # Input Text                       ${CCWEB_LoginEmail}    ${login_email}
    # Input Password                   ${CCWEB_LoginPassword}    ${login_pw}
    # Click Element                    ${CCWEB_LoginBtn}
    # Wait Until Page Contains         ${login_username}
    
Verify If The User Cannot Login Using Incorrect Password
    [Tags]    Smoke
    Login To CC Website Invalid    ${login_email}    ${login_pw_inc}    ${login_username}
    