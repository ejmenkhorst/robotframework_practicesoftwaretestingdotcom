*** Settings ***
Documentation       Page Object for the cart page

Library             Browser


*** Variables ***
# Step 1 Cart
${PROCEEDTOCHECKOUTLOCATOR}     data-test=proceed-1


*** Keywords ***
Proceed To Checkout Step Login
    [Documentation]    Click on the Proceed To Checkout button on the checkout page
    Click    ${PROCEEDTOCHECKOUTLOCATOR}
