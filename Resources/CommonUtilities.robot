*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***

After Test
    close all browsers

Before Test
    open browser  about:blank  ${BROWSER}
    maximize browser window

waitForPageToLoad
    set selenium implicit wait  2sec
