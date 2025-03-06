*** Settings ***
Documentation       Page Object for the checkout wizard Billing Details page

Library             Browser
Resource            ../../common steps.resource


*** Variables ***
${STREETLOCATOR}                data-test=street
${CITYLOCATOR}                  data-test=city
${STATELOCATOR}                 data-test=state
${COUNTRYLOCATOR}               data-test=country
${POSTALCODELOCATOR}            data-test=postal_code
${PROCEEDTOPAYMENTLOCATOR}      data-test=proceed-3


*** Keywords ***
Proceed To Checkout Step Payment Method
    [Documentation]    Click on the Proceed To Payment button on the checkout page
    Click    ${PROCEEDTOPAYMENTLOCATOR}

Input Street And House Number
    [Documentation]    Write a value in the textfield street on the billing page of the checkout wizard
    [Arguments]    ${street}    ${house number}
    Fill Text    ${STREETLOCATOR}    ${street} ${house number}

Input City
    [Documentation]    Write a value in the textfield city on the billing page of the checkout wizard
    [Arguments]    ${city}
    Fill Text    ${CITYLOCATOR}    ${city}

Input State
    [Documentation]    Write a value in the textfield state on the billing page of the checkout wizard
    [Arguments]    ${state}
    Fill Text    ${STATELOCATOR}    ${state}

Input Country
    [Documentation]    Write a value in the textfield country on the billing page of the checkout wizard
    [Arguments]    ${country}
    Fill Text    ${COUNTRYLOCATOR}    ${country}

Input Postal Code
    [Documentation]    Write a value in the textfield postal code on the billing page of the checkout wizard
    [Arguments]    ${postal code}
    Fill Text    ${POSTALCODELOCATOR}    ${postal code}
