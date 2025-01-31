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

# User must exist in the database
# Given I'm a logged-out user and on the login page
# When I try to login with an email-address in the correct format and some random password
# A Warning Is Displayed    something wrong with the given email-address or password.

# User should fill out all mandatory fields to login
# Given I'm a logged-out user and on the login page
# When I just hit the Login button
# A Warning Is Displayed    email and password are mandatory.

# User should fill email in correct format to be able to login
# Given I'm a logged-out user and on the login page
# When I fill in an email in the wrong format
# A Warning Is Displayed    email-address is written in the wrong format.
