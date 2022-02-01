*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCWEB_Global_Variables.resource
Resource      ../../CCWEB_Global_Keywords.resource

Resource      MyAccount_Variables.resource
Resource      MyAccount_Keywords.resource

# Test Setup        Open CC Website
# Test Teardown     Close Browser

*** Test Cases ***
#TO DO
#CC Rewards Points
#Verify if Digital Member Card number and barcode is correct
#Numbers of: All Orders, Processing, Shipped Out/Picked Up/Reviews/Wishlist/Tickets

Verify If User Can Access My Account
    [Tags]    Smoke
    Open CC Website
    Login To CC Website                                ${login_email}    ${login_pw}    ${login_username}
    # Wait Until Element Is Visible                      ${login_username}    5
    
Verify If Your Orders Is Visible in My Account
    [Tags]    Smoke
    Wait Until Element Is Visible                      ${MyAccount_OrderHistory}    5
    
Verify If Wishlist Is Visible in My Account
    [Tags]    Smoke
    Wait Until Element Is Visible                      ${MyAccount_Wishlist}    5
    
Verify If Your Tickets Is Visible in My Account
    [Tags]    Smoke
    Wait Until Element Is Visible                      ${MyAccount_Wishlist}    5
    
Verify If Unsubscribe to Newsletter Is Visible in My Account
    [Tags]    Smoke
    Wait Until Element Is Visible                      ${MyAccount_Wishlist}    5
    
Verify If Address Book Is Visible in My Account
    [Tags]    Smoke
    Wait Until Element Is Visible                      ${MyAccount_Wishlist}    5
    
Verify If Account Information Is Visible in My Account
    [Tags]    Smoke
    Wait Until Element Is Visible                      ${MyAccount_Wishlist}    5
    
Verify If Reset Password Is Visible in My Account
    [Tags]    Smoke
    Wait Until Element Is Visible                      ${MyAccount_Wishlist}    5
    
Verify If Digital Member Card Is Visible in My Account
    [Tags]    Smoke
    Wait Until Element Is Visible                      ${MyAccount_DigitalCard}    5
    Close Browser