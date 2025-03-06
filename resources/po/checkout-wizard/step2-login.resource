*** Settings ***
Documentation       Page Object for the cart page

Library             Browser


*** Variables ***
${ALREADYLOGGEDINLOCATOR}       xpath=//div/app-checkout/aw-wizard/div/aw-wizard-step[2]/app-login/div/div/div/p
${PROCEEDTOBILLINGDETAILS}      data-test=proceed-2


*** Keywords ***
Proceed To Checkout Billing Details
    [Documentation]    Click on the Proceed To Checkout button on the checkout page
    Click    ${PROCEEDTOBILLINGDETAILS}
