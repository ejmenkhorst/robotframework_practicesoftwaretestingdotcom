*** Settings ***
Documentation       Page Object for the cart page

Library             Browser


*** Variables ***
# Step 1 Cart
${PROCEEDTOCHECKOUTLOCATOR}     data-test=proceed-1
# Step 2 Sign In
${ALREADYLOGGEDINLOCATOR}       xpath=/html/body/app-root/div/app-checkout/aw-wizard/div/aw-wizard-step[2]/app-login/div/div/div/p


*** Keywords ***
Proceed To Checkout Step 2
    [Documentation]    Click on the Proceed To Checkout button on the checkout page
    Click    ${PROCEEDTOCHECKOUTLOCATOR}
