*** Settings ***
Documentation       This API helper is used to set the application in a specific state

Resource            configuration.resource
Library             Collections
Library             RequestsLibrary
Library             JSONLibrary


*** Keywords ***
Get Product ID
    [Documentation]    Get the first product from the list returned by the API
    VAR    &{header}    Content-Type=application/json    accept=application/json
    ${response product}    GET    ${API}/products    headers=${header}
    ${json}    Convert To Dictionary    ${response product.json()}
    ${product list obj}    Get Value From Json    ${json}    $.data[0].id
    ${product id}    Get From List    ${product list obj}    0
    RETURN    ${product id}

Create Shopping Cart ID
    [Documentation]    Create a shopping cart ID
    VAR    &{header}    Content-Type=application/json    accept=application/json
    ${response cart id}    POST    ${API}/carts    headers=${header}
    ${shoppingcart id}    Set Variable    ${response cart id.json()}[id]
    RETURN    ${shoppingcart id}

Add Items To Shopping Cart
    [Documentation]    Add items to a created shopping cart
    [Arguments]    ${cart id}    ${product id}    ${quantity}
    VAR    &{header}    Content-Type=application/json    accept=application/json
    VAR    &{cart data}    product_id=${product id}    quantity=${quantity}
    ${cart response}    POST    ${API}/carts/${cart id}    headers=${header}    json=${cart data}
    RETURN    ${cart response}

Get Authentication Token
    [Documentation]    Get authentication token from API
    [Arguments]    ${username}    ${password}
    VAR    &{header}    Content-Type=application/json    accept=application/json
    VAR    &{auth data}    email=${username}    password=${password}
    ${auth response}    POST    ${API}/users/login    headers=${header}    json=${auth data}
    ${auth token}    Set Variable    ${auth response.json()}[access_token]
    RETURN    ${auth token}
