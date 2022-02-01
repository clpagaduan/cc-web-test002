*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCWEB_Global_Variables.resource
Resource      ../../CCWEB_Global_Keywords.resource

Resource      ProductDetails_Variables.resource
Resource      ProductDetails_Keywords.resource

Test Setup        Open CC Website
Test Teardown     Close Browser



*** Test Cases ***
#TO DO
#Navigate other images
#Select OPEN BOX
#Add Tech Care Replace
#Deselect Tech Care Replace
#Check Other Store
#Change Preferred Store
#Write a Review
#View Related Products
#Add Related Product to Cart
#View Customers who purchased this also bought
#Add ^ to cart
#Your recently viewed products
#Add ^ to cart
#Check if item overview is complete
#Check if item specifications are complete
#Check if warranty and returns are complete

Verify If User Can View Product Details
    [Tags]    Smoke
    Search And View Product Details                    ${item1}
    
Verify If Item Has Price
    [Tags]    Smoke
    Search And View Product Details                    ${item1}
    Page Should Contain Element                        ${ProductDetails_Price}    
    
Verify If User Can Add Item To Cart in Product Details
    [Tags]    Smoke
    Search And View Product Details                    ${item1}
    Click Button                                       ${ProductDetails_AddToCart}
    Wait Until Element Is Visible                      ${CCWEB_ViewCart}
    Click Button                                       ${CCWEB_ViewCart}
    Wait Until Page Contains                           ${item1}
    
Verify If User Can Add Quantity in Product Details
    [Tags]    Regression
    Search And View Product Details                    ${item1}
    ${Quantity_Old}    Get Element Attribute           ${ProductDetails_Quantity}    value
    Click Element                                      ${ProductDetails_AddQty}
    ${Quantity_New}    Get Element Attribute           ${ProductDetails_Quantity}    value
    Should Not Be Equal                                ${Quantity_Old}    ${Quantity_New}
    
Verify If User Can Subtract Quantity in Product Details
    [Tags]    Regression
    Search And View Product Details                    ${item1}
    Click Element                                      ${ProductDetails_AddQty}
    ${Quantity_Old}    Get Element Attribute           ${ProductDetails_Quantity}    value
    Click Element                                      ${ProductDetails_SubtractQty}
    ${Quantity_New}    Get Element Attribute           ${ProductDetails_Quantity}    value
    Should Not Be Equal                                ${Quantity_Old}    ${Quantity_New}
    
Verify If User Can View Product Overview
    [Tags]    Regression
    Search And View Product Details                    ${item1}
    Click Element                                      ${ProductDetails_Tab_Overview}
    Page Should Contain Element                        ${ProductDetails_Body_Overview}
    
Verify If User Can View Product Specifications
    [Tags]    Regression
    Search And View Product Details                    ${item1}
    Click Element                                      ${ProductDetails_Tab_Specs}
    Page Should Contain Element                        ${ProductDetails_Body_Specs}
    
Verify If User Can View Product Warranty
    [Tags]    Regression
    Search And View Product Details                    ${item1}
    Click Element                                      ${ProductDetails_Tab_Warranty}
    Page Should Contain Element                        ${ProductDetails_Body_Warranty}
    
    