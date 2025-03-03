*** Settings ***
Documentation       This API helper is used to set the application in a specific state

Resource            configuration.resource
Library             Collections
Library             RequestsLibrary
Library             JSONLibrary


*** Variables ***
&{HEADER}       Content-Type=application/json    accept=application/json


*** Keywords ***
Get Product ID
    [Documentation]    Get the first product from the list returned by the API
    ${response product}    GET    ${API}/products    headers=${HEADER}
    Should Be Equal    ${response product.status_code}    ${200}
    ${json}    Convert To Dictionary    ${response product.json()}
    ${product list obj}    Get Value From Json    ${json}    $.data[0].id
    ${product id}    Get From List    ${product list obj}    0
    RETURN    ${product id}

Create Shopping Cart ID
    [Documentation]    Create a shopping cart ID
    ${response cart id}    POST    ${API}/carts    headers=${HEADER}
    Should Be Equal    ${response cart id.status_code}    ${201}
    ${shoppingcart id}    Set Variable    ${response cart id.json()}[id]
    RETURN    ${shoppingcart id}

Add Items To Shopping Cart
    [Documentation]    Add items to a created shopping cart
    [Arguments]    ${cart id}    ${product id}    ${quantity}
    VAR    &{cart data}    product_id=${product id}    quantity=${quantity}
    ${cart response}    POST    ${API}/carts/${cart id}    headers=${HEADER}    json=${cart data}
    Should Be Equal    ${cart response.status_code}    ${200}
    RETURN    ${cart response}

Get Authentication Token
    [Documentation]    Get authentication token from API
    [Arguments]    ${username}    ${password}
    VAR    &{auth data}    email=${username}    password=${password}
    ${auth response}    POST    ${API}/users/login    headers=${HEADER}    json=${auth data}
    Should Be Equal    ${auth response.status_code}    ${200}
    ${auth token}    Set Variable    ${auth response.json()}[access_token]
    RETURN    ${auth token}
