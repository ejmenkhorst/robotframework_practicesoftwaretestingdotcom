# Test Automation Strategy Toolshop

The objective of this strategy is to ensure the functional reliability, performance, and security of the Toolshop webshop with automated testing across various layers.  

**CI/CD Integration**  
The automated tests described in this document can be integrated into a CI/CD pipeline to provide continuous feedback and ensure platform stability when making changes to existing functionality or adding new functionality without breaking existing functionality.

## Table of Contents

[Automation Scope](#automation-scope)
1. [Unit Tests](#1-unit-tests)
   - [Focus](#focus)
   - [Techniques](#techniques)
   - [Outcome](#outcome)
2. [API Testing](#2-api-testing)
   - [Scope API Testing](#scope-api-testing)
   - [prioritisation of the API Endpoints](#prioritisation-of-the-api-endpoints)
     - [High Priority](#high-priority)
     - [Medium Priority](#medium-priority)
     - [Low Priority](#low-priority)
3. [UI Testing](#3-ui-testing)
   - [Scope UI Testing](#scope-ui-testing)
   - [prioritisation](#prioritisation)
     - [Very High Priority](#very-high-priority)
     - [High Priority](#high-priority-1)
     - [Medium Priority](#medium-priority)
4. [End-to-End Testing](#4-end-to-end-testing)
   - [Scope E2E Testing](#scope-e2e-testing)
   - [prioritisation](#prioritisation-e2e)
5. [Performance Testing](#5-performance-testing)

## Automation Scope
- **Unit Tests**: Validate backend logic.
- **API Testing**: Verify API endpoints and services.
- **UI Tests**: Ensure frontend functionality and user interaction.
- **End-to-End Tests**: Simulate critical real-world user workflows.
- **Performance Tests**: Simulate load/traffic of real-world user workflows.
- **CI/CD Integration**: Yield from the early feedback we get from our automated tests.

### **1. Unit Tests**
**Focus**: 
- User registration logic.
- Login/authentication and password handling.
- Payment processing logic.
- Password reset logic.
- Order history data handling.

**Techniques**:
- **Mutation Testing**: Introduce controlled mutations to the code to validate that the unit tests can detect faults and to improve test quality.  
- **Fuzz Testing**: Inject random or malformed input to ensure that unit components are robust and can handle edge cases.

**Outcome**: 
- Improved unit tests by ensuring they detect a wide variety of faults and edge cases.
- More resilient code that can handle invalid inputs or unexpected conditions.  

### **2. API Testing**
The main focus for API testing is to ensure that the Toolshop API works as expected for all listed endpoints:
- Brand
- Cart
- Category 
- Contact 
- Favorite 
- Image  
- Invoice 
- Payment
- Product 
- Report 
- TOTP
- User

#### **Scope API Testing**
- **Functional Testing**: Ensure that the API endpoints return correct responses based on the input data.
- **Security Testing**: Test for vulnerabilities such as authorization/authentication issues.
- **Load Testing**: Validate how the API performs under load conditions (e.g., many simultaneous requests).
- **Negative Testing**: Test how the system handles invalid inputs and error scenarios.
- **Boundary Testing**: Ensure the API handles edge cases correctly.
- **Data Integrity**: Ensure consistency of the data returned and modified by API calls.

#### **prioritisation of the [API endpoints](https://api.practicesoftwaretesting.com/api/documentation)**

***Test Automation Focus API Endpoints***  
- For the highest priority, ensure a high level of automation coverage, especially for positive and negative tests.
- For medium priority, focus on basic functionality and edge cases.
- For low priority, automate essential smoke tests to confirm availability.

##### **High Priority**
1. **User / TOTP / Contact API**
   - User authentication and support are critical for interactions with the Toolshop; without this you can not place an order.

2. **Cart API**
   - The cart is central to the user’s shopping experience and directly impacts revenue generation.

3. **Product API**
   - The product catalog is the core business of the Toolshop.

4. **Invoice & Payment API**
   - The invoice and Payment endpoints handle financial transactions and order receipts.

##### **Medium Priority**
5. **Brand API**
   - Brand information helps in filtering and organizing products but is less critical than cart or product APIs.

6. **Category API**
   - Categories help organize products, improving user experience.

7. **Favorite API**
   - Adding and managing favorites can improve user engagement but is not essential for transactions.

##### **Low Priority**
8. **Image API**
   - While important for product presentation, missing or incorrect images usually do not affect purchases.

9. **Report API**
   - Reports are typically for internal analytics and do not affect the user’s ability to make purchases.

### **3. UI Testing**
#### **Scope UI Testing**
**Focus**: 
- Checkout Flow
- Login Process             
- User Registration          
- Shopping Cart Functionality
- Password Reset UI          

#### **prioritisation**

| **Feature**               | **Priority** |
|---------------------------|--------------|
| Checkout Flow              | Very High    |
| Login Process              | High         |
| Customer Registration      | High         |
| Shopping Cart Functionality| High         |
| Password Reset UI          | Medium       |

#### **Very High Priority**
1. **Checkout Flow**
   - **Why**: Directly impacts revenue and user satisfaction.
   - **Tests**:
     - Verify cart review, shipping details, and payment methods.
     - Ensure correct order summary and confirmation.

#### **High Priority**
2. **Login Process**
   - **Why**: Essential for users to complete purchases and access personalized features.
   - **Tests**:
     - Verify login with correct credentials.
     - Ensure proper error messages for invalid login attempts.

3. **Customer Registration**
   - **Why**: Critical for new users to access the site and complete purchases.
   - **Tests**: 
     - Validate form fields (email, password, etc.).
     - Ensure proper error handling (e.g., invalid email).
     - Check security (e.g. password encryption).

4. **Shopping Cart Functionality**
   - **Why**: Core to the purchasing process and revenue generation, but requires a signed-in user.
   - **Tests**:
     - Validate add/remove items, quantity updates.
     - Ensure cart persistence across sessions.
     - Check cross-browser compatibility.

#### **Medium Priority**
5. **Password Reset UI**
   - **Why**: Important for user access recovery.
   - **Tests**:
     - Validate password reset request and email validation.
     - Ensure link expiry and secure password change.
     - Test UI error handling.

### **4. End-to-End Testing**
#### **Scope E2E Testing**
**Focus**: 
- Full user journeys (registration, login, checkout).
- Invalid scenarios (wrong credentials, payment failures).

#### **Prioritisation E2E**

| **User Journey**                                         | **Description**                                                                                                                                  | **Priority**  |
|----------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|---------------|
| **Checkout Flow (with Registration/Login)**              | Includes user registration, login, product browsing, adding to the cart, and completing the checkout process.                                     | Very High     |
| **Login → Shopping Cart → Checkout → Order Confirmation** | For returning users, tests login, shopping cart management, and order completion.                                                                | High          |
| **User Registration → Password Reset → Login → Checkout → Order Confirmation** | Tests account recovery and allows users to complete the purchase process after resetting their password.                                           | High          |
| **Account Profile Update → Shopping Cart → Checkout**    | Ensures that changes to profile details (e.g., shipping, payment information) are reflected during checkout.                                      | Medium        |
| **Logout and Session Expiry Testing**                    | Verifies logout functionality and session expiration for security.                                                                               | Medium        |

### **5. Performance Testing**
**Focus**: 
- Concurrent User Load
- Checkout and Payment gateway performance
