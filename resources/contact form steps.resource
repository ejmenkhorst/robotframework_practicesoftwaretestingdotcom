*** Settings ***
Documentation       Contact form BDD format

Resource            po/contactform.resource
Resource            common steps.resource
Resource            configuration.resource


*** Keywords ***
User Has Navigated To The Contact Form
    [Documentation]    Verify if contact page is loaded successfully
    Load Page    ${URL}/contact
    Verify Page Loaded Successfully    Contact Us - Practice Software Testing - Toolshop - v5.0

Filled Out All Required Fields
    [Documentation]    Fill out all required fields on the contact page
    Input Firstname    John
    Input Lastname    Doe
    Input Email Address    john.doe@johndoe.com
    Input Subject    warranty
    Input Message    This is a text longer than 50 characters - else I get an error message.

User Submits The Form
    [Documentation]    Submit contact form
    Send Contact Form

The Form Is Successfully Submitted
    [Documentation]    Verify if a message is show after successfully sending the form
    Verify Message Is Shown    ${SUCCESSSUBMITLOCATOR}    Contact

User Uploads A Invalid Filetype
    [Documentation]    Upload a invalid PDF filetype
    Input Attachment    resources/files/invalid.pdf

User Uploads A Valid Filetype
    [Documentation]    Upload a valid txt filetype
    Input Attachment    resources/files/valid.txt

A Warning Is Displayed
    [Documentation]    Verify a warning message about upload is displayed
    [Arguments]    ${warningmessage}
    Verify Message Is Shown    id=attachmentHelp    ${warningmessage}
