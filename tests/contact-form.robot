*** Settings ***
Resource    ../resources/contact-form.robot
Library        Browser

*** Test Cases ***

Submit contact form with all required fields
    [Documentation]    Happy flow test sending a form with all required fields except uploading a file.
    [Tags]    regression-test
    Given user has navigated to the contact form
    And filled out all required fields
    When user submits the form
    Then the form is successfully submitted

Submit contact form with all required fields and invalid attachment
    [Tags]    regression-test
    Given user has navigated to the contact form
    And filled out all required fields
    When user uploads a invalid filetype
    Then a warning is displayed    Only files with the txt extension are allowed, and files must be 0kb.

Submit contact form with all required fields and valid attachment
    [Tags]    wip
    Given user has navigated to the contact form
    And filled out all required fields
    And user uploads a valid filetype
    When user submits the form
    Then the form is successfully submitted