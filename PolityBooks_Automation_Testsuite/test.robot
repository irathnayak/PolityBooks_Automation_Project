*** Settings ***
Library  String
Library  OperatingSystem
Library  Collections
Library  Selenium2Library
#Library  SeleniumLibrary
Library  BuiltIn
Resource   PolityBooks_Element.robot
Resource   PolityBooks_Resources.robot
Suite Setup    Set Screenshot Directory    ${CURDIR}\\Screenshots

*** Test Cases ***
Polity-41_Home Page Slider sould appear with Book Image
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
     verify home page slider 
     [Teardown]    Close All Browsers   
Polity-41_Home Page Slider sould appear with Book Title
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
     #verify home page slider
     Verify Book Title in Landing page
     Verify Home Page Slider sould appear with Book Author Name
     verify Home Page Slider sould appear with Read More Option
     [Teardown]    Close All Browsers

	
######################################################## Start Of Swarnashree Code ################################################
Polity-132_Verify_Subject_Details_Series_List
    Open POLITY books site
    Verify Subject Details Series List
     [Teardown]    Close All Browsers

POLITY_39_Verify Polity image appearing on header
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    Verify Polity image appearing on header
    [Teardown]    Close All Browsers

POLITY_39_Verify On click Polity image redirects to home page
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    verify On click Polity image redirects to home page
    [Teardown]    Close All Browsers

POLITY_39_Verify Search Input box appears on header
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    verify Search Input box appears on header
    [Teardown]    Close All Browsers

POLITY_39_Verify Join Out Mailing List appears in header
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    verify Join Out Mailing List appears in header
    [Teardown]    Close All Browsers

POLITY_39_Verify "The home of independent thinking" Quotes appears in top left of header
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    verify "The home of independent thinking" Quotes appears in top left of header
    [Teardown]    Close All Browsers


#########MobileTesting of POlity 39########
Polity_39_Verify Home Page Header in Mobile View
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
    set window size    360	 640
      Verify Home Page Header image in Mobile View
      [Teardown]    Close All Browsers

