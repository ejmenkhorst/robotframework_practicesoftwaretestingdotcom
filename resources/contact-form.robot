*** Settings ***
Resource    po/contactform.robot
Resource    ./common.robot
Resource    configuration.resource


*** Keywords ***
user has navigated to the contact form
    Load Page    ${URL}/contact
    Verify page Loaded Successfully    Contact Us - Practice Software Testing - Toolshop - v5.0

filled out all required fields
    Input Firstname    John
    Input Lastname    Doe
    Input Email Address    john.doe@johndoe.com
    Input Subject    warranty
    Input Message    This is a text longer than 50 characters - else I get an error message.

user Submits The Form
    Send Contact Form

the form is successfully submitted
    Verify Message Is Shown    xpath=/html/body/app-root/div/app-contact/div/div/div/h3    Contact
    # Verify Message Is Shown    xpath=/html/body/app-root/div/app-contact/div/div/div/div    Thanks for your message! We will contact you shortly

user uploads a invalid filetype
    Input Attachment    resources/files/invalid.pdf

user uploads a valid filetype
    Input Attachment    resources/files/valid.txt

a warning is displayed
    [Arguments]    ${warningmessage}
    Verify Message Is Shown    id=attachmentHelp    ${warningmessage}
