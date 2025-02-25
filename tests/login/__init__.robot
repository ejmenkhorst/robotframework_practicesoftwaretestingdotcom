*** Settings ***
Documentation       Generic initialisation configuration for suite setup and teardown

Library             Browser
Resource            ../../resources/configuration.resource

Suite Setup         New Browser    browser=${BROWSER}    headless=${HEADLESS}
Suite Teardown      Close Browser
Test Setup          New Context    viewport={'width': 1920, 'height': 1080}
Test Teardown       Close Context
