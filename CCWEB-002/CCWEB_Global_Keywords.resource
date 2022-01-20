*** Settings ***
Library       SeleniumLibrary
Resource      CCWEB_Global_Variables.resource

*** Keywords ***
Open CC Website
    Open Browser                     ${url}             ${browser}
    Wait Until Element Is Visible    ${CC_SearchBar}    5
    
Search For Item
    [Arguments]    ${item}
    Input Text     ${CC_SearchBar}    ${item}
    Click Button    ${CC_SearchBarButton}