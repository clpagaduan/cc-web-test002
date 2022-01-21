*** Settings ***
Library       SeleniumLibrary
Resource      CCWEB_Global_Variables.resource

*** Keywords ***
Open CC Website
    Open Browser                     ${url}             ${browser}
    Wait Until Element Is Visible    ${CCWEB_SearchBar}    5
    
Search For Item In Search Bar
    [Arguments]    ${item}
    Input Text     ${CCWEB_SearchBar}    ${item}
    Click Button    ${CCWEB_SearchBarButton}
    
