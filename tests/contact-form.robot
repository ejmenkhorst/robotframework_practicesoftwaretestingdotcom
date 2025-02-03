*** Settings ***
Documentation       All contact form related testcases

Resource            ../resources/contact form steps.resource


*** Test Cases ***
User Should Be Able To Submit Contact Form With All Required Fields
    [Documentation]    Happy flow test sending a form with all required fields except uploading a file
    [Tags]    'regression'
    Given User Has Navigated To The Contact Form
    And Filled Out All Required Fields
    When User Submits The Form
    Then The Form Is Successfully Submitted

User Should Not Be Able To Submit Contact Form with all required fields and invalid attachment
    [Documentation]    Unhappy flow test sending a form with all required fields and invalid filetype
    Given User Has Navigated To The Contact Form
    And Filled Out All Required Fields
    When User Uploads A Invalid Filetype
    Then A Warning Is Displayed    Only files with the txt extension are allowed, and files must be 0kb.

User Should Be Able To Submit contact form with all required fields and valid attachment
    [Documentation]    Happy flow test sending a form with all required fields and valid filetype
    Given User Has Navigated To The Contact Form
    And Filled Out All Required Fields
    And User Uploads A Valid Filetype
    When User Submits The Form
    Then The Form Is Successfully Submitted
