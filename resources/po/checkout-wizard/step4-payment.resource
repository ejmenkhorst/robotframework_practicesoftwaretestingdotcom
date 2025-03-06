*** Settings ***
Documentation       Page Object for the checkout wizard Payment page

Library             Browser
Resource            ../../common steps.resource


*** Variables ***
${PAYMENTMETHODLOCATOR}         data-test=payment-method
${CONFIRMPAYMENTLOCATOR}        data-test=finish
${SUCCESSFULPAYMENTLOCATOR}     data-test=payment-success-message
# Order confirmation
${SUCCESSFULORDERLOCATOR}       id=order-confirmation


*** Keywords ***
Input Payment Method
    [Documentation]    Click on a value in the dropdown list with payment methods
    [Arguments]    ${value}
    Select Options By    ${PAYMENTMETHODLOCATOR}    value    ${value}

Confirm Payment
    [Documentation]    Click on the confirm button of the checkout wizard
    Click    ${CONFIRMPAYMENTLOCATOR}
