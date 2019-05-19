*** Settings ***
Documentation    Suite description
Resource  ../Resources/RFTutorialApp.robot
Resource  ../Resources/CommonUtilities.robot

Test Setup  Before Test
Test Teardown  After Test


*** Variables ***
${BROWSER}=  edge
${URL} =  http://www.robotframeworktutorial.com/


*** Test Cases ***
Should be able to access "Contact" Page
    [Documentation]  This is First TC
    [Tags]  Test1
    log  Executing Test1
    RFTutorialApp.Go To "homePage" Page
    RFTutorialApp.Verify HomePage Pg Load
    RFTutorialApp.Go To "Contacts" Page
    RFTutorialApp.Verify Contact Pg Load

Should be able to access "Testimonial" Page
    [Documentation]  This is Second TC
    [Tags]  Test2
    log  Executing Test2
    RFTutorialApp.Go To "homePage" Page
    RFTutorialApp.Go To "Contacts" Page
    RFTutorialApp.Verify Contact Pg Load
    RFTutorialApp.Go To "Testimonial" Page
    RFTutorialApp.Verify Testimonial Pg Load

*** Keywords ***
