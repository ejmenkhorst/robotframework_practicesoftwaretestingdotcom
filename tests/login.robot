*** Settings ***
Documentation       All login related testcases

Resource            ../resources/login form steps.resource


*** Test Cases ***
User should be able to login with valid credentials
    [Documentation]    Login with valid credentials
    Given User Has Navigated To The Login Page
    When User Logs In With Valid Credentials
    Then User Is Officially Logged In

User should not be able to login with invalid credentials
    [Documentation]    Login with invalid credentials
    Given User Has Navigated To The Login Page
    When User Logs In With Invalid Credentials
    Then A Warning Is Displayed    Invalid email or password
