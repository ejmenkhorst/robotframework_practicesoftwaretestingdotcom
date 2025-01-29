*** Settings ***
Documentation      This is some basic information about the suite    
Library            Browser

*** Variables ***
${URL}    https://automationplayground.com/crm/

*** Test Cases ***
Should be able to add a new customer

    [Documentation]      This is some basic info about this test case
    [Tags]               1006    smoke
    New Page             url=${URL}
    Get Title            ==    Customer Service
    Click                id=SignIn
    Get Text             xpath=//*[@id="loginform"]/div/div/div/div/h2    ==    Login
    Fill Text            id=email-id    admin@robotframeworktutorial.com
    Fill Text            id=password    qwerty
    Click                id=submit-id
    Get Text             xpath=/html/body/div/h2    ==    Our Happy Customers
    Click                id=new-customer
    Get Text             xpath=//*[@id="loginform"]/div/div/div/div/h2     ==    Add Customer
    Fill Text            id=EmailAddress    test@robotframeworktutorial.com
    Fill Text            id=FirstName       Jane
    Fill Text            id=LastName        Doe
    Fill Text            id=City            Dallas
    Select Options By    id=StateOrRegion   value    CO
    Check Checkbox       xpath=//*[@id="loginform"]/div/div/div/div/form/div[6]/input[1]   
    Get Checkbox State   xpath=//*[@id="loginform"]/div/div/div/div/form/div[6]/input[1]    ==    checked
    Click                "Submit"
    Get Text             id=Success

*** Keywords ***