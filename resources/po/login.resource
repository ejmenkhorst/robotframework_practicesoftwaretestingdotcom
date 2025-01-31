*** Settings ***
Documentation       This page object represents the login page of the website

Library             Browser
Resource            ../common steps.resource
Resource            myaccount.resource


*** Variables ***
${EMAILADDRESSLOCATOR}      id=email
${PASSWORDLOCATOR}          id=password
${LOGINLOCATOR}             data-test=login-submit
${ERRORMESSAGELOCATOR}      data-test=login-error


*** Keywords ***
Input Email Address
    [Documentation]    Write a value in the textfield email on the login page
    [Arguments]    ${email}
    Fill Text    ${EMAILADDRESSLOCATOR}    ${email}

Input Password
    [Documentation]    Write a value in the password field on the login page
    [Arguments]    ${password}
    Fill Secret    ${PASSWORDLOCATOR}    $password

Login To Portal
    [Documentation]    Click on the login button on the login page
    Click    ${LOGINLOCATOR}

User Is Officially Logged In
    [Documentation]    Verify if a user has successfully logged into the portal by checking the title of the HTML page
    Verify Page "My Account" Loaded Successfully

Warning Message Is Displayed
    [Documentation]    Verify a warning message about invalid login is displayed
    [Arguments]    ${warning message}
    Verify Message Is Shown    ${ERRORMESSAGELOCATOR}    ${warning message}
