*** Settings ***
Library       SeleniumLibrary
Resource      ../../../CCWEB_Global_Variables.resource
Resource      ../../../CCWEB_Global_Keywords.resource

Resource      Wishlist_Variables.resource

# Test Setup        Open CC Website
# Test Teardown     Close Browser

*** Test Cases ***
#TO DO
#Delete item in wishlist
Verify If User Can Add Item To Wishlist
    [Tags]    Smoke
    Open CC Website
    Login To CC Website                                ${login_email}    ${login_pw}    ${login_username}
    Search and View Product Details    ${Wishlist_ItemCode}
    Click Element    ${ProductDetails_AddToWishlist}
    Wait Until Page Contains    ${Wishlist_ItemCode}    5
    
# Verify If User Can Access Wishlist
    # Click Element        ${MyAccount_Wishlist}
    
Verify If Wishlist Has Image
    [Tags]    Regression
    Wait Until Element Is Visible   ${Wishlist_Image}    5
    
Verify If Wishlist Has Item Code
    [Tags]    Regression
    Wait Until Page Contains   ${Wishlist_ItemCode}    5
    
Verify If Wishlist Has Item Description
    [Tags]    Regression
    Wait Until Element Is Visible    ${Wishlist_ItemDesc}    5
    
Verify If Wishlist Has Price
    [Tags]    Regression
    Wait Until Page Contains   ${Wishlist_Price}    5
    Close Browser
    
    
# Verify If User Can Delete Item From Wishlist
    # # Click Element   ${Wishlist_Select_1}
    # execute javascript  document.getElementById('${Wishlist_Select_1}').click()
    # Click Button     ${Wishlist_Delete}
    # Page Should Not Contain    ${Wishlist_ItemCode}
    