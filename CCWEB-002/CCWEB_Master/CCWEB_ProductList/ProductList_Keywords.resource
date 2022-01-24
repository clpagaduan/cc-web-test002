*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCWEB_Global_Variables.resource
Resource      ../../CCWEB_Global_Keywords.resource
Resource      ProductList_Variables.Resource

*** Keywords ***
# Click Category
    # [Arguments]    ${Selected_Category}
    # Mouse Over    //a[contains(text(),'${Selected_Category}')]
    
# Click Subcategory
    # [Arguments]    ${Selected_Subcategory}
    # Click Element    //a[contains(text(),'${Selected_Subcategory}')]