*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${contact}=  ul#top-menu li:nth-child(4)

*** Keywords ***
verify Header
    wait until page contains element  css=#et_pb_contact_name_1
