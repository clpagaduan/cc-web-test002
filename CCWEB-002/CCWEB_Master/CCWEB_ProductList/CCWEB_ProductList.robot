*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCWEB_Global_Variables.resource
Resource      ../../CCWEB_Global_Keywords.resource

Resource      ProductList_Variables.resource
Resource      ProductList_Keywords.resource

Test Setup        Open CC Website
Test Teardown     Close Browser

*** Test Cases ***

#PENDING
#Filter On Sale Items
#Sort By Recommended
#Sort By Best Selling
#Sort By Brand asc
#Sort By Brand desc
#Sort By Price asc
#Sort By Price desc
#Switch to Grid View
#Switch to List View
#Filter - Store Locations
#Filter - Manufacturers
#Filter - Price Range
#Switch to Category
#Switch Subcategory

Verify If User Can Access Product List
    [Tags]    Smoke
    Search For Item In Search Bar        ${item1}
    Page Should Contain Element          ${ProductList_Table}
    
Verify If User Can Search For Items in Product List
    [Tags]    Smoke
    Search For Item In Search Bar        ${item1}
    Wait Until Element Contains          ${ProductList_Table}    ${item1}
    
Verify If User Can Navigate Categories And Access Product List
    [Tags]    Smoke
    Navigate Category And Subcategory    ${Selected_Category}    ${Selected_Subcategory}
    Page Should Contain Element          ${topSearchResult}
    
Verify If User Can Hide Filters In Product List
    [Tags]    Regression
    Navigate Category And Subcategory    ${Selected_Category}    ${Selected_Subcategory}
    Click Element                        ${ProductList_FilterToggle}
    Element Should Not Be Visible        ${ProductList_FilterSideBar}
    
Verify If User Can Show and Hide Filters In Product List
    [Tags]    Regression
    Navigate Category And Subcategory    ${Selected_Category}    ${Selected_Subcategory}
    Click Element                        ${ProductList_FilterToggle}
    Element Should Not Be Visible        ${ProductList_FilterSideBar}
    Click Element                        ${ProductList_FilterToggle}
    Element Should Be Visible            ${ProductList_FilterSideBar}
    
Verify If User Can Add Item To Cart in Product List
    [Tags]    Smoke
    Search For Item In Search Bar        ${item1}
    Click Button                         ${ProductList_AddToCart_FirstResult}
    Wait Until Element Is Visible        ${CCWEB_ViewCart}
    Click Button                         ${CCWEB_ViewCart}
    Wait Until Page Contains             ${item1}
    