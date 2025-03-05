# Test Automation Strategy Toolshop

The objective of this strategy is to ensure the functional reliability, performance, and security of the Toolshop webshop with automated testing across various layers.

**CI/CD Integration**  
The automated tests described in this document can be integrated into a CI/CD pipeline to provide continuous feedback and ensure platform stability when making changes to existing functionality or adding new functionality without breaking existing functionality.

## Table of Contents

[Automation Scope](#automation-scope)

1. [Unit Tests](#1-unit-tests)
   - [Focus](#focus)
   - [Scope](#scope)
   - [Result](#result-unit-testing)
2. [API Testing](#2-api-testing)
   - [Focus](#focus-api-testing)
   - [Scope](#scope-api-testing)
   - [Prioritisation of the API Endpoints](#prioritisation-of-the-api-endpointshttpsapipracticesoftwaretestingcomapidocumentation)
     - [High Priority](#high-priority)
     - [Medium Priority](#medium-priority)
     - [Low Priority](#low-priority)
   - [Result](#result-api-testing)
3. [UI Testing](#3-ui-testing)
   - [Focus](#focus-ui-testing)
   - [Scope](#scope-ui-testing)
   - [Prioritisation](#prioritisation)
     - [Very High Priority](#very-high-priority)
     - [High Priority](#high-priority-1)
     - [Medium Priority](#medium-priority)
   - [Result](#result-ui-testing)
4. [End-to-End Testing](#4-end-to-end-testing)
   - [Focus](#focus-e2e-testing)
   - [Scope](#scope-e2e-testing)
   - [Prioritisation](#prioritisation-e2e)
   - [Result](#result-e2e-testing)
5. [Performance Testing](#5-performance-testing)
   - [Focus](#focus-performance-testing)
   - [Scope](#scope-performance-testing)
   - [Result](#result-performance-testing)

## Automation Scope

- **Unit Tests**: Validate backend logic.
- **API Testing**: Verify API endpoints and services.
- **UI Tests**: Ensure frontend functionality and user interaction.
- **End-to-End Tests**: Simulate critical real-world user workflows.
- **Performance Tests**: Simulate load/traffic of real-world user workflows.
- **CI/CD Integration**: Yield from the early feedback we get from our automated tests.

### **1. Unit Tests**

#### **Focus**:

- User registration logic.
- Login/authentication and password handling.
- Payment processing logic.
- Password reset logic.
- Order history data handling.

#### **Scope**:

- **Mutation Testing**: Introduce controlled mutations to the code to validate that the unit tests can detect faults and to improve test quality.
- **Fuzz Testing**: Inject random or malformed input to ensure that unit components are robust and can handle edge cases.

#### **Result unit testing**:

- Improved unit tests by ensuring they detect a wide variety of faults and edge cases.
- More resilient code that can handle invalid inputs or unexpected conditions.

### **2. API Testing**

#### Focus API testing

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

#### **Prioritisation of the [API endpoints](https://api.practicesoftwaretesting.com/api/documentation)**

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

#### **Result API testing**:

- Improved tests coverage by ensuring business-critical areas while efficiently allocating resources to less impactful features.
- Ensuring overall system stability and improved user experience without overburdening automation efforts on non-essential components.
- Faster regression feedback on these API integration tests for the team.

### **3. UI Testing**

#### **Scope UI Testing**

- **Functional Testing**: Ensuring UI components in isolation or real system integrations behave as expected.

#### **Focus UI testing**:

- Checkout Flow
- Login Process
- User Registration
- Shopping Cart Functionality
- Password Reset UI

#### **Prioritisation**

| **Feature**                 | **Priority** |
|-----------------------------|--------------|
| Checkout Flow               | Very High    |
| Login Process               | High         |
| Customer Registration       | High         |
| Shopping Cart Functionality | High         |
| Password Reset UI           | Medium       |

##### **Very High Priority**

1. **Checkout Flow**
   - **Why**: Directly impacts revenue and user satisfaction.
   - **Tests**:
     - Verify cart review, shipping details, and payment methods.
     - Ensure correct order summary and confirmation.

##### **High Priority**

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
   - **Why**: Core to the purchasing process and revenue generation, but requires a logged-in user.
   - **Tests**:
     - Validate add/remove items, quantity updates.
     - Ensure cart persistence within browser tabs.
     - Check cross-browser compatibility.

##### **Medium Priority**

5. **Password Reset UI**
   - **Why**: Important for user access recovery.
   - **Tests**:
     - Validate password reset request and email validation on the component level.
     - Ensure secure password change.

#### **Result UI testing**:

- Improved tests coverage by ensuring UI components with mocked integrations for difficult error states of an application
- Improved test coverage by ensuring UI Integration tests with real system integrations
- Faster regression feedback on UI component tests for the team.

### **4. End-to-End Testing**

#### **Scope E2E testing**

- **Functional Testing**: Ensuring critical business flows work fully integrated.

#### **Focus E2E testing**:

- Full user journeys (registration, login, checkout).
- Invalid scenarios (wrong credentials, payment failures).

#### **Prioritisation E2E**

| **User Journey**                                                               | **Description**                                                                                               | **Priority** |
|--------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|--------------|
| **Checkout Flow (with Registration/Login)**                                    | Includes user registration, login, product browsing, adding to the cart, and completing the checkout process. | Very High    |
| **Login → Shopping Cart → Checkout → Order Confirmation**                      | For returning users, tests login, shopping cart management, and order completion.                             | High         |
| **User Registration → Password Reset → Login → Checkout → Order Confirmation** | Tests account recovery and allows users to complete the purchase process after resetting their password.      | High         |
| **Account Profile Update → Shopping Cart → Checkout**                          | Ensures that changes to profile details (e.g., shipping, payment information) are reflected during checkout.  | Medium       |
| **Logout and Session Expiry Testing**                                          | Verifies logout functionality and session expiration for security.                                            | Medium       |

#### **Result E2E testing**:

- Provides a more comprehensive validation of the entire user journey, ensuring both UI components and backend processes work together seamlessly.
- While E2E tests are slower and sometimes more complex compared to API/Unit testing, it provides higher confidence in the functionality of the entire system as a whole.

### **5. Performance Testing**

Performance testing ensures the Toolshop is robust, efficient, and capable of providing an optimal user experience under various conditions.

#### **Focus performance testing**:

- **Load Testing**: Assess the system performance under normal, expected traffic to ensure stability.
- **Stress Testing**: Pushes the system beyond its capacity to identify failure points.
- **Scalability Testing**: Evaluates the system's ability to scale with increased load.
- **Endurance Testing**: Tests system performance under sustained load to check for memory leaks and degradation.
- **Spike Testing**: Measures system response to sudden, extreme traffic increases.
- **Concurrency Testing**: Tests the system’s ability to handle multiple simultaneous users.

#### **Scope performance testing**:

- Concurrent User Load
- Checkout and Payment gateway performance
- Spike testing

#### **Result performance testing**:

- Scalability: Ensures that we can handle a growing number of users, especially during peak traffic periods (e.g., sales, holidays).
- Load Handling: Tests how the site performs under varying levels of load, ensuring it doesn’t crash or slow down under stress.
- Speed Optimization: Identifies performance bottlenecks, such as slow page loads or delayed interactions, which can negatively impact the user experience.
- User Experience: Ensures that the website’s speed and responsiveness meets the users expectations, reducing abandonment if it takes too long to load (more than 3 seconds) .
