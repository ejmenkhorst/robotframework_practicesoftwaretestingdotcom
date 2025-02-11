*** Settings ***
Documentation       Checkout related steps in BDD format

Resource            po/cart.resource
Resource            po/login.resource
Resource            configuration.resource
Resource            api helper.resource


*** Keywords ***
User Is On The Checkout Page
    [Documentation]    Verify if checkout page is loaded successfully
    Load Page    ${URL}/checkout
    Verify Page Loaded Successfully    Checkout - Practice Software Testing - Toolshop - v5.0

There Are Items In The Shopping Cart
    [Documentation]    Adding items in the shopping cart via API and set them in session storage
    ${product id}    Get Product ID
    ${shoppingcart id}    Create Shopping Cart ID
    Add Items To Shopping Cart    cart id=${shoppingcart id}    product id=${product id}    quantity=1
    SessionStorage Set Item    cart_id    ${shoppingcart id}
    SessionStorage Set Item    cart_quantity    1
    Browser.Reload

Proceed To Checkout
    [Documentation]    Click on the button to go to step 2 in the checkout process
    Proceed To Checkout Step 2

A Login Screen Is Shown
    [Documentation]    Step 2 in the checkout process is shown - login screen
    Get Element By Role    HEADING    name=Login

User Is Authenticated
    [Documentation]    Get authentication token via API and set it in local storage of the browser
    ${generated auth token}    Get Authentication Token    username=${USERNAME}    password=${PASSWORD}
    Local Storage Set Item    auth-token    ${generated auth token}

Informative Message Is Displayed
    [Documentation]    A informative message like argument
    [Arguments]    ${informative message}
    Verify Message Is Shown    locator=${ALREADYLOGGEDINLOCATOR}    validation message=${informative message}
