*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${testimonial}=  ul#top-menu li:nth-child(3)
*** Test Cases ***

*** Keywords ***
Naivgate
    go to  ${URL}

Verify Header
    wait until page contains element  css=.et_pb_text_inner h1
