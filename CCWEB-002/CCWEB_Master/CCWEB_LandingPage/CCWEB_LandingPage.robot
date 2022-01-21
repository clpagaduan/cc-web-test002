*** Settings ***
Library       SeleniumLibrary
Resource      ../../CCWEB_Global_Variables.resource
Resource      ../../CCWEB_Global_Keywords.resource
Resource      LandingPage_Variables.resource

Test Setup        Open CC Website
Test Teardown     Close Browser



*** Test Cases ***

Verify If Landing Page Is Accessible
    [Tags]    Smoke    Regression
    Wait Until Element Is Visible    ${CCWEB_SearchBar}    5
    
Verify If Landing Page Contains Site Header
    [Tags]    Regression
    Wait Until Element Is Visible    ${CCWEB_SiteHeader}    5
    
Verify If Landing Page Contains Header Bar
    [Tags]    Regression
    Wait Until Element Is Visible    ${CCWEB_HeaderBar}    5
    
Verify If Landing Page Contains Carousel
    [Tags]    Regression
    Wait Until Element Is Visible    ${CCWEB_Carousel}    5

Verify If Landing Page Contains Site Body
    [Tags]    Regression
    Wait Until Element Is Visible    ${CCWEB_HomePage}    5
    
Verify if Landing Page Contains Subscriptions
    [Tags]    Regression
    Wait Until Element Is Visible    ${CCWEB_Subscriptions}    5
    
Verify if Landing Page Contains Footer
    [Tags]    Regression
    Wait Until Element Is Visible    ${CCWEB_Footer}    5