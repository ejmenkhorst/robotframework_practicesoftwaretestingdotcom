*** Settings ***
Documentation      This page object represents the landing page of the website
Library            Browser

Resource    ../configuration.resource
Resource    ../common.robot

*** Variables ***

*** Keywords ***
Load landing page
    Load Page    ${URL}

Verify landing page loaded successfully
    Verify Page Loaded Successfully    Practice Software Testing - Toolshop - v5.0