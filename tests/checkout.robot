*** Settings ***
Documentation       All checkout related testcases

Resource            ../resources/checkout steps.resource


*** Test Cases ***
User Should Not Be Able To Proceed Checkout If Not Logged In
    [Documentation]    Check if user gets login screen when trying to checkout without being authenticated
    Given User Is On The Checkout Page
    And There Are Items In The Shopping Cart
    When Proceed To Checkout
    Then A Login Screen Is Shown

User Should Not Get Login Screen If Authenticated
    [Documentation]    Check if user does not get a login screen when trying to checkout while being authenticated
    Given User Is On The Checkout Page
    And User Is Authenticated
    And There Are Items In The Shopping Cart
    When Proceed To Checkout
    Then Informative Message Is Displayed    Hello Jane Doe, you are already logged in. You can proceed to checkout.
