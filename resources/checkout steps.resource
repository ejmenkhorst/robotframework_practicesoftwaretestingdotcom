*** Settings ***
Documentation       Checkout related steps in BDD format

Resource            po/checkout-wizard/step1-cart.resource
Resource            po/checkout-wizard/step2-login.resource
Resource            po/checkout-wizard/step3-billing-details.resource
Resource            po/checkout-wizard/step4-payment.resource
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
    Set Session Storage    cart_id    ${shoppingcart id}
    Validate Session Storage    cart_id    ${shoppingcart id}
    Set Session Storage    cart_quantity    1
    Validate Session Storage    cart_quantity    1
    Browser.Reload

Proceed To Checkout
    [Documentation]    Click on the button to go to step 2 in the checkout process
    Proceed To Checkout Step Login

A Login Screen Is Shown
    [Documentation]    Step 2 in the checkout process is shown - login screen
    Get Element By Role    HEADING    name=Login

User Is Logged In
    [Documentation]    Get authentication token via API and set it in local storage of the browser
    Retrieve And Set Authentication Token

Informative Message Is Displayed
    [Documentation]    A informative message like argument
    [Arguments]    ${informative message}
    Verify Message Is Shown    locator=${ALREADYLOGGEDINLOCATOR}    validation message=${informative message}

Proceeds To Checkout And Enters Valid Shipping And Payment Information
    [Documentation]    Fill out all required data and payment information
    Proceed To Checkout

    Proceed To Checkout Billing Details

    Input Street And House Number    Street    11
    Input City    Citylights
    Input State    The Greatest State Of America
    Input Country    United States Of America
    Input Postal Code    9000

    Proceed To Checkout Step Payment Method
    Input Payment Method    cash-on-delivery

The User Pays The Order
    [Documentation]    Confirm the payment by clicking the button
    Confirm Payment

The User Should Be Notified With A Successful Payment Notification
    [Documentation]    Check if a message is shown confirming a successful payment transaction
    Verify Message Is Shown    ${SUCCESSFULPAYMENTLOCATOR}    Payment was successful
    Confirm Payment

The User Should Be Notified With A Successful Order Notification
    [Documentation]    Verify order confirmation message is shown
    Verify Message Is Shown    ${SUCCESSFULORDERLOCATOR}    Thanks for your order! Your invoice number is INV
