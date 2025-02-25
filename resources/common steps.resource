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
    [Documentation]    Verify a message is show based upon a locator and a specific message
    [Arguments]    ${locator}    ${validation message}
    Get Text    ${locator}    ==    ${validation message}

Retrieve And Set Authentication Token
    [Documentation]    Get authentication token via API and set it in local storage of the browser
    ${generated auth token}    Get Authentication Token    username=${USERNAME}    password=${PASSWORD}
    Local Storage Set Item    auth-token    ${generated auth token}

Set Session Storage
    [Documentation]    Set session storage in browser
    [Arguments]    ${key}    ${value}
    Session Storage Set Item    ${key}    ${value}
