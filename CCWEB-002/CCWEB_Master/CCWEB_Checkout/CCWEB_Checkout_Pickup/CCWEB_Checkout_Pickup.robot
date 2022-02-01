*** Settings ***
Library       SeleniumLibrary
Resource      ../../../CCWEB_Global_Variables.resource
Resource      ../../../CCWEB_Global_Keywords.resource

Resource      ../Checkout_Variables.resource
Resource      ../Checkout_Keywords.resource

# Test Setup        Open CC Website
# Test Teardown     Close Browser

*** Test Cases ***
#TO DO
#DO NOT PLACE ORDER IN PRODUCTION SITE
#Place Order Using Delivery
#Use Credit Card
#Select Pickup Location
#Verify prices are consistent in Checkout
#Verify prices if coupon is applied
#Verify if address is correct

Verify If User Can Proceed To Checkout
    [Tags]    Smoke
    Open CC Website
    Login To CC Website                                ${login_email}    ${login_pw}    ${login_username}
    Search For Item In Search Bar                      ${item1}
    Click First Item In Search Results
    Click Continue Shopping
    Click View Cart
    #Proceed to Checkout
    Wait Until Element Is Visible    ${CCWEB_Cart_ProceedCheckout}
    Click Element                    ${CCWEB_Cart_ProceedCheckout}
    
Verify If User Can Select Pickup Method
    [Tags]    Smoke
    Wait Until Element Is Visible    ${CCWEB_Checkout_PickupRadio}
    Click Element                    ${CCWEB_Checkout_PickupRadio}
    
Verify If User Can Proceed To Payment
    [Tags]    Smoke
    Click Element                    ${CCWEB_Checkout_ProceedToPayment}

Verify If User Can Proceed To Review
    [Tags]    Smoke
    Click Element                    ${CCWEB_Checkout_ProceedToReview}
    Close Browser
    
# Verify If User Can Place Order
    # Wait Until Page Contains         ${item1_name}
    # Click Element                    ${CCWEB_Checkout_PlaceOrder}
    # Close Browser
    
# Verify If Order Has Been Placed
    # Wait Until Page Contains        ${item1}
    # Wait Until Page Contains        ${item1_name}
    # Wait Until Page Contains        ${login_email}