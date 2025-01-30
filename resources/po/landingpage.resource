*** Settings ***
Documentation       This page object represents the landing page of the website

Library             Browser
Resource            ../configuration.resource
Resource            ../common.robot


*** Keywords ***
Load Landing Page
    [Documentation]    Load the page based upon the given URL
    Load Page    ${URL}

Verify Landing Page Loaded Successfully
    [Documentation]    Verify HTML title of the landing page
    Verify Page Loaded Successfully    Practice Software Testing - Toolshop - v5.0
