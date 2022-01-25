*** Settings ***
Library       SeleniumLibrary
Resource      CCWEB_Global_Variables.resource

*** Keywords ***
Open CC Website   
    Open Browser                     ${url}             ${browser}
    Set Window Size    1920    1080
    Accept Cookies
    # Maximize Browser Window
    Wait Until Element Is Visible    ${CCWEB_SearchBar}    5
    
Search For Item In Search Bar
    [Arguments]    ${item}
    Wait Until Element Is Visible    ${CCWEB_SearchBar}
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
    
Accept Cookies
    Click Element    ${CCWEB_AcceptCookies}