*** Settings ***
Documentation       This page object represents the My Account page of the website

Library             Browser


*** Variables ***
${HEADER ACCOUNT LOCATOR}       data-test=page-title
${FAVORITES BUTTON LOCATOR}     data-test=nav-favorites
${PROFILE BUTTON LOCATOR}       data-test=nav-profile
${INVOICES BUTTON LOCATOR}      data-test=nav-invoices
${MESSAGES BUTTON LOCATOR}      data-test=nav-messages


*** Keywords ***
Verify Page "My Account" Loaded Successfully
    [Documentation]    Verify page loaded successfully based upon title of the HTML page
    Get Text    ${HEADER ACCOUNT LOCATOR}    ==    My account
