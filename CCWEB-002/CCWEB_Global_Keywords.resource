*** Settings ***
Library       SeleniumLibrary
Resource      CCWEB_Global_Variables.resource

*** Keywords ***
Open CC Website   
    Open Browser                     ${url}             ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    ${CCWEB_SearchBar}    5
    
Search For Item In Search Bar
    [Arguments]    ${item}
    Input Text     ${CCWEB_SearchBar}    ${item}
    Click Button    ${CCWEB_SearchBarButton}
    
Navigate Category and Subcategory
    [Arguments]    ${Category}    ${Subcategory}
    Click Element    ${Nav_ShopProducts}
    Click Category    ${Category}
    Click Subcategory    ${Subcategory}
    

Click Category
    [Arguments]    ${Selected_Category}
    Mouse Over    //a[contains(text(),'${Selected_Category}')]
    
Click Subcategory
    [Arguments]    ${Selected_Subcategory}
    Click Element    //a[contains(text(),'${Selected_Subcategory}')]