*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCWEB_Global_Variables.resource
Resource      ../../CCWEB_Global_Keywords.resource
Resource      ProductDetails_Variables.Resource

*** Keywords ***
# Search and View Product Details
    # [Arguments]                         ${item}
    # Search For Item In Search Bar       ${item}
    # Wait Until Element Contains         ${CCWEB_ProductList}    ${item}
    # Scroll Element Into View            ${topSearchResult}
    # Wait Until Element Is Visible       ${topSearchResult}    10
    # Click Element                       ${topSearchResult}
    # Wait Until Page Contains            ${item}