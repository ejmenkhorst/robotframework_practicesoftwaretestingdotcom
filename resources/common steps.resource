*** Settings ***
Documentation       This object represents generic keywords used in multiple tests

Library             Browser


*** Keywords ***
Load Page
    [Documentation]    Load a page based upon the URL given as argument
    [Arguments]    ${url page}
    New Page    url=${url page}

Verify Page Loaded Successfully
    [Documentation]    Verify page loaded successfully based upon title of the HTML page
    [Arguments]    ${title html}
    Get Title    ==    ${title html}

Verify Message Is Shown
    [Documentation]    Verify a message is show based upon a locator and a specific message
    [Arguments]    ${locator}    ${validation message}
    Get Text    ${locator}    ==    ${validation message}
