*** Settings ***
Documentation       This page object represents the My Account page of the website

Library             Browser


*** Variables ***
${HEADERACCOUNTLOCATOR}         data-test=page-title
${FAVORITESBUTTONLOCATOR}       data-test=nav-favorites
${PROFILEBUTTONLOCATOR}         data-test=nav-profile
${INVOICESBUTTONLOCATOR}        data-test=nav-invoices
${MESSAGESBUTTONLOCATOR}        data-test=nav-messages


*** Keywords ***
Verify Page "My Account" Loaded Successfully
    [Documentation]    Verify page loaded successfully based upon title of the HTML page
    Get Text    ${HEADERACCOUNTLOCATOR}    ==    My account
