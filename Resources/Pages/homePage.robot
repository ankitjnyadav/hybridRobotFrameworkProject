*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary

*** Variables ***
${homepage}=  css=ul#top-menu li:nth-child(1) a
${courseList}=  css=ul#top-menu li:nth-child(2) a
${testimonial}=  css=ul#top-menu li:nth-child(3) a
${contact}=  ul#top-menu li:nth-child(4) a

*** Keywords ***

Go To The Base URL
    go to  ${URL}

Go To "Home Page" Page
    click element  css=ul#top-menu li:nth-child(1) a  #css= ${homepage}

Go To "Contact" Page
    click element  css=ul#top-menu li:nth-child(4) a  #${contact}

Go To "Course List" Page
    click element  css=ul#top-menu li:nth-child(2) a  #${courseList}

Go To "Testimonial" Page
    click element  css=ul#top-menu li:nth-child(3) a  #${testimonial}

verify Header
    wait until page contains element  css=h1.entry-title main_title