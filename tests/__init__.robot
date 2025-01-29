*** Settings ***
Documentation    Generic initialisation configuration for suite setup and teardown
Library        Browser
Resource    ../resources/configuration.resource

Suite Setup      New Browser    browser=${BROWSER}    headless=${HEADLESS}
Test Setup       New Context    viewport={'width': 1920, 'height': 1080}
Test Teardown    Close Context
Suite Teardown    Close Browser