# Functional UI Test Cases for Toolshop

The following functional UI testcases are prioritized by risk.

## Table of Contents

1. [High Priority](#high-priority-critical-features)
   - [User Login](#feature-user-login)
   - [Checkout Process](#feature-checkout-process--payment-processing)
   - [User Registration](#feature-user-registration)
   - [Shopping Cart](#feature-shopping-cart)
   - [Contact](#feature-contact)
2. [Medium Priority](#medium-priority-important-features)
   - [Invalid User Registration](#tc-011-scenario-invalid-user-registration)
   - [Order History](#feature-order-history)

### High Priority (Critical Features)

#### Feature: User Login

> If users can’t log in, they can’t access the portal and place an order.

| Test Case ID | Scenario                                                  | Description                                                | Status      |
|--------------|-----------------------------------------------------------|------------------------------------------------------------|-------------|
| TC-001       | User should be able to login with valid credentials       | Verify login with valid credentials.                       | Implemented |
| TC-002       | User should not be able to login with invalid credentials | Verify error message when invalid credentials are entered. | Implemented |

##### TC-001 Scenario: User should be able to log in with valid credentials

```gherkin
Given user has navigated to the login page
When user logs in with valid credentials
Then user is officially logged in
```

##### TC-002 Scenario: User should not be able to log in with invalid credentials

```gherkin
Given user has navigated to the login page
When user logs in with invalid credentials
Then a warning is displayed
```

#### Feature: Checkout Process / Payment Processing

> The users ability to complete the purchase is vital to survive as an online toolshop.  
> If they can't complete the checkout, the sale is lost.

| Test Case ID | Scenario                                                     | Description                                                                                           | Status          |
|--------------|--------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|-----------------|
| TC-003       | Successful checkout process                                  | Verify successful checkout process including payment by supplying valid shipping and payment details. | Not Implemented |
| TC-004       | User should not be able to proceed checkout if not logged in | Check if user gets login screen when trying to checkout without being authenticated                   | Implemented     |
| TC-005       | User should not get login screen if authenticated            | Check if user does not get a login screen when trying to checkout while being authenticated           | Implemented     |

##### TC-003 Scenario: Successful checkout process

```gherkin
Given user is on the checkout page
And user is logged in
And there are items in the shopping cart
And proceeds to checkout and enters valid shipping and payment information
When the user places the order
Then the user should be redirected to the order confirmation page
And the payment should be processed successfully
```

##### TC-004 Scenario: User should not be able to proceed checkout if not logged in

```gherkin
Given user is on the checkout page
And there are items in the shopping cart
When proceed to checkout
Then a login screen is shown
```

##### TC-005 Scenario: User should not get login screen if authenticated

[Documentation]

```gherkin
Given user is on the checkout page
And user is logged in
And there are items in the shopping cart
When proceed to checkout
Then informative message is displayed
```

#### Feature: User Registration

> While important, it’s slightly less critical than login because users can still browse the site and view products before registering.

| Test Case ID | Scenario                     | Description                                  | Status          |
|--------------|------------------------------|----------------------------------------------|-----------------|
| TC-006       | Successful User Registration | Verify user registration with valid details. | Not Implemented |

##### TC-006 Scenario: Successful User Registration

```gherkin
Given user is on the register page
And the user enters all valid and required customer details
When the user registers his new account
Then the user gets redirected to the profile page
```

#### Feature: Shopping Cart

> This is a key part of the purchase process, but it is typically tested in the checkout process and isn’t as high-risk on its own.

| Test Case ID | Scenario              | Description                                          | Status          |
|--------------|-----------------------|------------------------------------------------------|-----------------|
| TC-007       | Adding item to a cart | Verify that items can be added to the shopping cart. | Not Implemented |

##### TC-007 Scenario: Adding Item to Cart

```gherkin
Given the user is browsing products on the site
When the user adds a product to the shopping cart
Then the product should appear in the cart
```

#### Feature: Contact

> This is a key part of the customer experience, but it isn’t as high-risk on its own though it can impact our customer service negatively and give bad ratings on review platforms.

| Test Case ID | Scenario                                                                                       | Description                                                                         | Status      |
|--------------|------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------|-------------|
| TC-008       | User should be able to submit contact form with all required fields                            | Verify successfully sending a form with all required fields except uploading a file | Implemented |
| TC-009       | User should not be able to submit contact form with all required fields and invalid attachment | Verify warning when sending a form with all required fields and invalid attachment  | Implemented |
| TC-010       | User should be able to submit contact form with all required fields and valid attachment       | Verify successfully sending a form with all required fields and valid attachment    | Implemented |

##### TC-008 Scenario: User should be able to submit contact form with all required fields

```gherkin
Given user has navigated to the contact form
And filled out all required fields
When user submits the form
Then the form is successfully submitted
```

##### TC-009 Scenario: User should not be able to submit contact form with all required fields and invalid attachment

```gherkin
Given user has navigated to the contact form
And filled out all required fields
When user uploads a invalid filetype
Then a warning is displayed
```

##### TC-010 Scenario: User should be able to submit contact form with all required fields and valid attachment

```gherkin
Given user has navigated to the contact form
And filled out all required fields
And user uploads a valid filetype
When user submits the form
Then the form is successfully submitted
```

### Medium Priority (Important Features)

| Test Case ID | Scenario                  | Description                                                  | Status          |
|--------------|---------------------------|--------------------------------------------------------------|-----------------|
| TC-011       | Invalid User Registration | Verify error message for invalid or incomplete registration. | Not Implemented |

##### TC-011 Scenario: Invalid User Registration

```gherkin
Given user is on the register page
And the user enters invalid customer details
When the user registers his new account
Then informative message is displayed
```

#### Feature: Order History

> Users need to be able to view their order history for tracking purchases, but it’s not as critical as completing an order.

| Test Case ID | Scenario              | Description                                     | Status          |
|--------------|-----------------------|-------------------------------------------------|-----------------|
| TC-012       | Viewing Order History | Verify that users can view their order history. | Not Implemented |

##### TC-012 Scenario: Viewing Order History

```gherkin
Given the user has placed an order
When the user navigates to their order history page
Then the user should see a list of their past orders
```
