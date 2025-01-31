*** Settings ***
Documentation       Login form BDD format

Resource            po/login.resource
Resource            common steps.resource
Resource            configuration.resource


*** Keywords ***
User Has Navigated To The Login Page
    [Documentation]    Verify if login page is loaded successfully
    Load Page    ${URL}/auth/login
    Verify Page Loaded Successfully    Login - Practice Software Testing - Toolshop - v5.0

User Logs In With Valid Credentials
    [Documentation]    User Logs In With Valid Credentials
    Input Email Address    ${USERNAME}
    Input Password    ${PASSWORD}
    Login To Portal

User Logs In With Invalid Credentials
    [Documentation]    User Logs In With Invalid Credentials
    Input Email Address    fakeuser@test.com
    Input Password    invalid-password
    Login To Portal

A Warning Is Displayed
    [Documentation]    User Sees Warning Message about Invalid Credentials
    [Arguments]    ${warning message}
    Warning Message Is Displayed    ${warning message}
