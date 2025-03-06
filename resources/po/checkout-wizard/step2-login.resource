*** Settings ***
Documentation       Page Object for the checkout wizard login page

Library             Browser


*** Variables ***
${EMAILADDRESSLOCATOR}      data-test=email
${PASSWORDLOCATOR}          data-test=password
${LOGINLOCATOR}             data-test=login-submit
${ERRORMESSAGELOCATOR}             data-test=login-error
${ALREADYLOGGEDINLOCATOR}       xpath=//div/app-checkout/aw-wizard/div/aw-wizard-step[2]/app-login/div/div/div/p
${PROCEEDTOBILLINGDETAILS}      data-test=proceed-2


*** Keywords ***
Proceed To Checkout Billing Details
    [Documentation]    Click on the Proceed To Checkout button on the checkout page
    Click    ${PROCEEDTOBILLINGDETAILS}
