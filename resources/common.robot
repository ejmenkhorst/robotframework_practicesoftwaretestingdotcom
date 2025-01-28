*** Settings ***
Documentation      This object represents generic keywords used in multiple tests
Library            Browser

*** Variables ***

*** Keywords ***
Load page
    [Arguments]    ${url page}
    New Page    url=${url page}

Verify page loaded successfully
    [Arguments]    ${title html}
    Get Title    ==    ${title html}
    
Verify message is shown
    [Arguments]    ${locator}    ${validation message} 
    Get Text       ${locator}    ==     ${validation message}

