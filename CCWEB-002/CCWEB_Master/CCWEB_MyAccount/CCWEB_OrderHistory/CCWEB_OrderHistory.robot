*** Settings ***
Library       SeleniumLibrary
Resource      ../../../CCWEB_Global_Variables.resource
Resource      ../../../CCWEB_Global_Keywords.resource

Resource      OrderHistory_Variables.resource

# Test Setup        Open CC Website
# Test Teardown     Close Browser

*** Test Cases ***
#TO DO
#Click View Details

Verify If User Can Access Order History
    [Tags]    Smoke
    Open CC Website
    Login To CC Website                                ${login_email}    ${login_pw}    ${login_username}
    Click Element                                      ${MyAccount_OrderHistory}
    Wait Until Page Contains                           ${login_memberid}
    
Verify If Order Number Is Displayed
    [Tags]    Regression
    Wait Until Page Contains    ${OrderHistory_OrderNumber}
    
Verify If Order Date Is Displayed
    [Tags]    Regression
    Wait Until Page Contains    ${OrderHistory_OrderDate}
    
Verify If Order Product Qty Is Displayed
    [Tags]    Regression
    Wait Until Page Contains    ${OrderHistory_Product}
    
Verify If Order Cost Is Displayed
    [Tags]    Regression
    Wait Until Page Contains    ${OrderHistory_Cost}
    
Verify If Order Status Is Displayed
    [Tags]    Regression
    Wait Until Page Contains    ${OrderHistory_Status}
    Close Browser
    
# Verify If View Details Button Is Displayed
    # Click Element               ${OrderHistory_ViewDetails}
