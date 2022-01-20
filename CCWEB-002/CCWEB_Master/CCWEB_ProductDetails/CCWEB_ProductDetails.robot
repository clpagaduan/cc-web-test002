*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCWEB_Global_Variables.resource
Resource      ../../CCWEB_Global_Keywords.resource
Resource      ProductDetails.resource

Test Setup        Open CC Website
Test Teardown     Close Browser



*** Test Cases ***

Verify If User Can Access CC Website
    Wait Until Element Is Visible    ${CC_SearchBar}    5
    
Verify If User Can Search For Item
    Search For Item    ${item1}
    Wait Until Element Contains    ${CC_ProductList}    ${item1}
    