*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCWEB_Global_Variables.resource
Resource      ../../CCWEB_Global_Keywords.resource

Resource      ShoppingCart_Variables.resource
Resource      ShoppingCart_Keywords.resource

# Test Setup        Open CC Website
# Test Teardown     Close Browser

*** Test Cases ***
#Verify If User Can View Shopping Cart
#Verify If User Can Add Quantity
#Verify If User Can Subtract Quantity
#Verify If User Can Delete Item in Cart
#Verify If User Can Proceed To Checkout
#Verify If User Can Apply Coupon
#Verify If User Can Continue Shopping

#QA NOTE: Due to captcha being required upon logged in, this entire test case will only have 1 setup and teardown

Verify If User Can Add Item and View Shopping Cart As Logged In User
    [Tags]    Smoke
    Open CC Website
    Login To CC Website                                ${login_email}    ${login_pw}    ${login_username}
    # Verify If User Is Logged In                           ${login_username}
    Search For Item In Search Bar                      ${item1}
    Wait Until Element Is Visible                      ${ProductList_AddToCart_FirstResult}
    Click Button                                       ${ProductList_AddToCart_FirstResult}
    Wait Until Element Is Visible                      ${CCWEB_ContinueShopping}
    Click Button                                       ${CCWEB_ContinueShopping}
    Wait Until Element Is Visible                      ${Nav_cart}
    Click Element                                      ${Nav_cart}
    Wait Until Page Contains                           ${item1}
    
Verify If User Can Add Quantity in Shopping Cart
    [Tags]    Regression
    # Login To CC Website                                ${login_email}    ${login_pw}    ${login_username}
    # Wait Until Page Contains                           ${login_username}
    Wait Until Element Is Visible                      ${Nav_cart}
    Click Element                                      ${Nav_cart}
    Wait Until Page Contains                           ${item1}
    ${Quantity_Old}    Get Element Attribute           ${ShoppingCart_Quantity}    value
    Click Element                                      ${ShoppingCart_AddQty}
    ${Quantity_New}    Get Element Attribute           ${ShoppingCart_Quantity}    value
    Should Not Be Equal                                ${Quantity_Old}    ${Quantity_New}
    
Verify If User Can Subtract Quantity in Shopping Cart
    [Tags]    Regression
    # Login To CC Website                                ${login_email}    ${login_pw}    ${login_username}
    # Wait Until Page Contains                           ${login_username}
    Wait Until Element Is Visible                      ${Nav_cart}
    Click Element                                      ${Nav_cart}
    Wait Until Page Contains                           ${item1}
    Click Element                                      ${ShoppingCart_AddQty}
    ${Quantity_Old}    Get Element Attribute           ${ShoppingCart_Quantity}    value
    Click Element                                      ${ShoppingCart_SubtractQty}
    ${Quantity_New}    Get Element Attribute           ${ShoppingCart_Quantity}    value
    Should Not Be Equal                                ${Quantity_Old}    ${Quantity_New}
    
Verify If User Can Delete Item In Shopping Cart
    [Tags]    Smoke
    # Login To CC Website                                ${login_email}    ${login_pw}    ${login_username}
    # Wait Until Page Contains                           ${login_username}
    Wait Until Element Is Visible                      ${Nav_cart}
    Click Element                                      ${Nav_cart}
    Wait Until Page Contains                           ${item1}
    Click Element                                      ${ShoppingCart_Delete}
    Wait Until Page Does Not Contain                   ${item1}
    Close Browser
    