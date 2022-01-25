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
    Click Element                    ${CCWEB_LoginLink}
    Input Text                       ${CCWEB_LoginEmail}    ${login_email}
    Input Password                   ${CCWEB_LoginPassword}    ${login_pw}
    Wait Until Element Is Visible       ${CCWEB_LoginBtn}    5
    Click Element                    ${CCWEB_LoginBtn}
    Wait Until Page Contains         ${login_username}
    
# Verify If The User Can Login Using Correct Username
    # Click Element                    ${CCWEB_LoginLink}
    # Wait Until Page Contains         Secure Login
    # Click Element                    ${CCWEB_LoginViaUsername}
    # Input Text                       ${CCWEB_LoginEmail}    ${login_email}
    # Input Password                   ${CCWEB_LoginPassword}    ${login_pw}
    # Click Element                    ${CCWEB_LoginBtn}
    # Wait Until Page Contains         ${login_username}
    

Verify If The User Cannot Login Using Incorrect Password
    Click Element                    ${CCWEB_LoginLink}
    Input Text                       ${CCWEB_LoginEmail}    ${login_email}
    Input Password                   ${CCWEB_LoginPassword}    ${login_pw_inc}
    Wait Until Element Is Visible        ${CCWEB_LoginBtn}    5
    Click Element                    ${CCWEB_LoginBtn}
    Wait Until Page Contains         ${CCWEB_LoginErrorMessage}
    