*** Settings ***
Documentation       Page Object for the contact form page

Library             Browser


*** Variables ***
${FIRSTNAMELOCATOR}         id=first_name
${LASTNAMELOCATOR}          id=last_name
${EMAILLOCATOR}             id=email
${SUBJECTLOCATOR}           id=subject
${MESSAGELOCATOR}           id=message
${UPLOADDOCUMENTLOCATOR}    id=attachment
${SENDLOCATOR}              text=Send


*** Keywords ***
Input Firstname
    [Documentation]    Write a value in the textfield firstname on the contact page
    [Arguments]    ${firstname}
    Fill Text    ${FIRSTNAMELOCATOR}    ${firstname}

Input Lastname
    [Documentation]    Write a value in the textfield lastname on the contact page
    [Arguments]    ${lastname}
    Fill Text    ${LASTNAMELOCATOR}    ${lastname}

Input Email Address
    [Documentation]    Write a value in the textfield email on the contact page
    [Arguments]    ${email}
    Fill Text    ${EMAILLOCATOR}    ${email}

Input Subject
    [Documentation]    Click on a value in the dropdown list based upon the value on the contact page
    [Arguments]    ${value}
    Select Options By    ${SUBJECTLOCATOR}    value    ${value}

Input Message
    [Documentation]    Write a value in the textfield message on the contact page
    [Arguments]    ${message}
    Fill Text    ${MESSAGELOCATOR}    ${message}

Input Attachment
    [Documentation]    Upload a file in the upload component on the contact page
    [Arguments]    ${path to file}
    Upload File By Selector    ${UPLOADDOCUMENTLOCATOR}    ${path to file}

Send Contact Form
    [Documentation]    Click on the send button on the contact page
    Click    ${SENDLOCATOR}
