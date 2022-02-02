*** Settings ***
Library       SeleniumLibrary
Resource      ../../../CCWEB_Global_Variables.resource
Resource      ../../../CCWEB_Global_Keywords.resource
Resource      AddressBook_Variables.Resource

*** Keywords ***
Get Address
     ${old_fname}    Get Element Attribute    ${AddressBook_fname}    value
     ${old_lname}    Get Element Attribute    ${AddressBook_lname}    value
     ${old_addr1}    Get Element Attribute    ${AddressBook_addr1}    value
     ${old_addr2}    Get Element Attribute    ${AddressBook_addr2}    value
     ${old_postal}   Get Element Attribute    ${AddressBook_postal}   value
     ${old_city}     Get Element Attribute    ${AddressBook_city}     value
     ${old_prov}     Get Element Attribute    ${AddressBook_prov}     value
     ${old_country}  Get Element Attribute    ${Addressbook_country}  value
     Log    ${old_fname}
     Log    ${old_lname}
     Log    ${old_addr1}
     Log    ${old_addr2}
     Log    ${old_postal}
     Log    ${old_city}
     Log    ${old_prov}
     Log    ${old_country}
     
Clear And Enter New Address
    Clear Element Text    ${AddressBook_fname}
    Clear Element Text    ${AddressBook_lname}
    Clear Element Text    ${AddressBook_addr1}
    Clear Element Text    ${AddressBook_addr2}
    Clear Element Text    ${AddressBook_postal}
    Clear Element Text    ${AddressBook_city}
    Input Text    ${AddressBook_fname}    ${fname}
    Input Text    ${AddressBook_lname}    ${lname}
    Input Text    ${AddressBook_addr1}    ${addr1}
    Input Text    ${AddressBook_addr2}    ${addr2}
    Input Text    ${AddressBook_postal}    ${postal}
    Input Text    ${AddressBook_city}    ${city}
    Select From List By Value   ${AddressBook_Prov}    ${prov}
    
Save New Address
    Click Element    ${AddressBook_save}
    Wait Until Page Contains    ${AddressBook_save_message}
    Click Element    ${AddressBook_save_ok}
    
Verify If Address Was Saved
    Click Element    ${Nav_YourAccount}
    Click Element    ${Nav_YourAccount_MyAccount}
    Wait Until Element Is Visible    ${MyAccount_AddressBook}
    Click Element    ${MyAccount_AddressBook}
    Wait Until Page Contains    ${AddressBook_Title}   5
    
    ${old_fname}    Get Element Attribute    ${AddressBook_fname}    value
    ${old_lname}    Get Element Attribute    ${AddressBook_lname}    value
    ${old_addr1}    Get Element Attribute    ${AddressBook_addr1}    value
    ${old_addr2}    Get Element Attribute    ${AddressBook_addr2}    value
    ${old_postal}   Get Element Attribute    ${AddressBook_postal}   value
    ${old_city}     Get Element Attribute    ${AddressBook_city}     value
    ${old_prov}     Get Element Attribute    ${AddressBook_prov}     value
    ${old_country}  Get Element Attribute    ${Addressbook_country}  value
    
    Should Be Equal    ${old_fname}    ${fname}
    Should Be Equal    ${old_lname}    ${lname}
    Should Be Equal    ${old_addr1}    ${addr1}
    Should Be Equal    ${old_addr2}    ${addr2}
    Should Be Equal    ${old_postal}    ${postal}
    Should Be Equal    ${old_city}    ${city}
    Should Be Equal    ${old_prov}    ${prov}
    Should Be Equal    ${old_country}    ${country}
    
Revert Original Values
    Clear Element Text    ${AddressBook_fname}
    Clear Element Text    ${AddressBook_lname}
    Clear Element Text    ${AddressBook_addr1}
    Clear Element Text    ${AddressBook_addr2}
    Clear Element Text    ${AddressBook_postal}
    Clear Element Text    ${AddressBook_city}
    Input Text    ${AddressBook_fname}    ${og_fname}
    Input Text    ${AddressBook_lname}    ${og_lname}
    Input Text    ${AddressBook_addr1}    ${og_addr1}
    Input Text    ${AddressBook_addr2}    ${og_addr2}
    Input Text    ${AddressBook_postal}    ${og_postal}
    Input Text    ${AddressBook_city}    ${og_city}
    Select From List By Value   ${AddressBook_Prov}    ${og_prov}
    Save New Address
    
    

    
