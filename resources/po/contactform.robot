*** Settings ***
Documentation       This page object represents the contact page of the website

Library             Browser


*** Variables ***
${firstnameLocator}         id=first_name
${lastnameLocator}          id=last_name
${emailAddressLocator}      id=email
${subjectLocator}           id=subject
${messageLocator}           id=message
${uploadDocumentLocator}    id=attachment
${sendLocator}              text=Send


*** Keywords ***
Input firstname
    [Arguments]    ${firstname}
    Fill Text    ${firstnameLocator}    ${firstname}

Input lastname
    [Arguments]    ${lastname}
    Fill Text    ${lastnameLocator}    ${lastname}

Input email address
    [Arguments]    ${email}
    Fill Text    ${emailAddressLocator}    ${email}

Input subject
    [Arguments]    ${value}
    Select Options By    ${subjectLocator}    value    ${value}

Input message
    [Arguments]    ${message}
    Fill Text    ${messageLocator}    ${message}

Input attachment
    [Arguments]    ${path to file}
    Upload File By Selector    ${uploadDocumentLocator}    ${path to file}

Send contact form
    Click    ${sendLocator}
