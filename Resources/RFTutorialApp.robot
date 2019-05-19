*** Settings ***
Resource  ../Resources/Pages/Contact.robot
Resource  ../Resources/Pages/CourseList.robot
Resource  ../Resources/Pages/homePage.robot
Resource  ../Resources/Pages/Testimonials.robot

*** Variables ***


*** Keywords ***
Go To "Contacts" Page
    homePage.Go To "Contact" Page

Go To "Course List" Page
    homePage.Go To "Course List" Page

Go To "Testimonial" Page
    homePage.Go To "Testimonial" Page

Go To "homePage" Page
    homePage.Go To The Base URL

Verify Contact Pg Load
    Contact.verify Header

Verify HomePage Pg Load
    homePage.verify Header

RFTutorialApp.Verify Testimonial Pg Load
    Testimonials.verify Header