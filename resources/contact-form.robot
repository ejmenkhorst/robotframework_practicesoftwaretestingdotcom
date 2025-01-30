*** Settings ***
Documentation       Contact form BDD format

Resource            po/contactform.robot
Resource            ./common.robot
Resource            configuration.resource


*** Keywords ***
User Has Navigated To The Contact Form
    Load Page    ${URL}/contact
    Verify Page Loaded Successfully    Contact Us - Practice Software Testing - Toolshop - v5.0

Filled Out All Required Fields
    Input Firstname    John
    Input Lastname    Doe
    Input Email Address    john.doe@johndoe.com
    Input Subject    warranty
    Input Message    This is a text longer than 50 characters - else I get an error message.

User Submits The Form
    Send Contact Form

The Form Is Successfully Submitted
    Verify Message Is Shown    xpath=/html/body/app-root/div/app-contact/div/div/div/h3    Contact

User Uploads A Invalid Filetype
    Input Attachment    resources/files/invalid.pdf

User Uploads A Valid Filetype
    Input Attachment    resources/files/valid.txt

A Warning Is Displayed
    [Arguments]    ${warningmessage}
    Verify Message Is Shown    id=attachmentHelp    ${warningmessage}
