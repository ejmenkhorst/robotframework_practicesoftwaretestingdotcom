*** Settings ***
Documentation       This object represents generic keywords used in multiple tests

Resource            api helper.resource
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
    [Documentation]    Verify a dynamic part of the message is shown based upon a locator and message
    [Arguments]    ${locator}    ${validation message}
    Get Text    ${locator}    *=    ${validation message}

Retrieve And Set Authentication Token
    [Documentation]    Get authentication token via API and set it in local storage of the browser
    ${generated auth token}    Get Authentication Token    username=${USERNAME}    password=${PASSWORD}
    Local Storage Set Item    auth-token    ${generated auth token}
    Validate Local Storage    auth-token    ${generated auth token}

Set Session Storage
    [Documentation]    Set session storage in browser
    [Arguments]    ${key}    ${value}
    Session Storage Set Item    ${key}    ${value}

Validate Session Storage
    [Documentation]    Validate session storage with the key and compare it with the expected value
    [Arguments]    ${key}    ${expected value}
    ${item}    Session Storage Get Item    ${key}
    Should Be Equal    ${item}    ${expected value}

Validate Local Storage
    [Documentation]    Validate local storage with the key and compare it with the expected value
    [Arguments]    ${key}    ${expected value}
    ${local storage item}    Local Storage Get Item    ${key}
    Should Be Equal    ${local storage item}    ${expected value}
