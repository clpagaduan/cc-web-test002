*** Settings ***
Library       SeleniumLibrary
Resource      CCWEB_Global_Variables.resource

*** Keywords ***
Open CC Website   
    Open Browser                     ${url}             ${browser}
    Set Window Size    1920    1080
    Accept Cookies
    Maximize Browser Window
    Wait Until Element Is Visible    ${CCWEB_SearchBar}    5
    
Login To CC Website
    [Arguments]    ${email}    ${password}    ${username}
    Click Element                    ${CCWEB_LoginLink}
    Input Text                       ${CCWEB_LoginEmail}    ${email}
    Sleep    5s
    Input Password                   ${CCWEB_LoginPassword}    ${password}
    Sleep    5s
    Wait Until Element Is Visible       ${CCWEB_LoginBtn}    5s
    # Press Keys    ${CCWEB_LoginPassword}    ENTER
    Click Element                    ${CCWEB_LoginBtn}
    Verify If User Is Logged In    ${username}
    
Login To CC Website Invalid
    [Arguments]    ${email}    ${password}    ${username}
    Click Element                    ${CCWEB_LoginLink}
    Input Text                       ${CCWEB_LoginEmail}    ${email}
    Sleep    5s
    Input Password                   ${CCWEB_LoginPassword}    ${password}
    Sleep    5s
    Wait Until Element Is Visible       ${CCWEB_LoginBtn}    5s
    # Press Keys    ${CCWEB_LoginPassword}    ENTER
    Click Element                    ${CCWEB_LoginBtn}
    Wait Until Page Contains         ${CCWEB_LoginErrorMessage}
    
Verify If User Is Logged In
    [Arguments]    ${verify_username}
    Wait Until Page Contains         ${verify_username}
    
Search For Item In Search Bar
    [Arguments]    ${item}
    Wait Until Element Is Visible    ${CCWEB_SearchBar}
    Input Text     ${CCWEB_SearchBar}    ${item}
    Click Button    ${CCWEB_SearchBarButton}
    
Navigate Category and Subcategory
    [Arguments]    ${Category}    ${Subcategory}
    Wait Until Element Is Visible    ${Nav_ShopProducts}
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