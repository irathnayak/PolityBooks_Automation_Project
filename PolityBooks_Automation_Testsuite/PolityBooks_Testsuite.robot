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

######################################################## Start of Bitan Code #############################################################


#POLITY_001_Verify Subject details page loaded with 6 rows of 3 covers
    #[Tags]    QA    Regression    Sanity
   # Open POLITY books site
    #Verify no of links in div class
    #[Teardown]    Close All Browsers

POLITY_121_Verify Subject Header content Successfully loaded
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    Verify Subject Header content
    Verify Home and Our Subjects Links appears in header 
    [Teardown]    Close All Browsers 
POLITY_123_Verify Subjects list blocks appears in Subject page
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    Verify Subject Header content
    verify subjects list blocks appears in subject page

    [Teardown]    Close All Browsers
    

POLITY_123_Verify on click subject block redirects to respective blocks
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    Verify Subject Header content
    verify subjects list blocks appears in subject page
    verify onclick subject block redirects to respective blocks
    [Teardown]    Close All Browsers
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
POLITY-41_Verify On click read more redirected to book detail page
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
     Verify On click read more redirected to book detail page
     
     [Teardown]    Close All Browsers
 POLITY-41_Verify on Click Book name redirects to Book detail page
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    Verify on Click Book name redirects to Book detail page
    
    [Teardown]    Close All Browsers
# POLITY-44_Verify on click Author Name redirects to Author page
   # [Tags]    QA    Regression    Sanity
   # Open POLITY books site
   # Verify on click Author Name redirects to Author page
   # [Teardown]    Close All Browsers
   
POLITY_135_Verify Series page header loaded with Our series headline
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    Verify Series page header loaded with Our series headline
    Verify header have Home and series breadcrums
    Verify on click home beadcrumbs redirects to home page
    [Teardown]    Close All Browsers
    


######################################################## End Of Bitan Code ################################################
    

     
######################################################## Start Of Swarnashree Code ################################################
Polity-132_Verify_Subject_Details_Series_List
    Open POLITY books site
    Verify Subject Details Series List
     [Teardown]    Close All Browsers
     
Polity-128_Verify_Subject_Details_Breadcrumbs
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    Verify Subject Detailed Page Breadcrumbs
    Verify Subject Detailed Pager Header content
    Verify Breadcrumbs Redirects to Respective page
    Verify Subject Details Header in Mobile view
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

POLITY_39_Verify On click Subjects menu redirects to subject
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    verify On click Subjects menu redirects to subject
    [Teardown]    Close All Browsers

POLITY_39_Verify On click series redirects to series page
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    verify On click series redirects to series page
    [Teardown]    Close All Browsers

POLITY_39_Verify On click authors menu redirects to authors page
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    verify On click authors menu redirects to authors page
    [Teardown]    Close All Browsers

POLITY_39_Verify On click About menu redirects to About page
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    verify On click About menu redirects to About page
    [Teardown]    Close All Browsers


#########SPRINT----7 Test cases###################################################

POLITY-152_Verify in the POLITY home screen Header Aboutus cookiepolicy
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    Verify home screen header
    Verify Aboutus link
   
    Verify cookiepolicy link in footer
    [Teardown]    Close All Browsers
POLITY_152_Verify 'Contact' and " Cookie Policy" links are clickable
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    Verify Contact and Cookie policy link are visible and clickable
    Verifying the link are clickable
    [Teardown]    Close All Browsers
POLITY_152_Verify privacypolicy Terms and condition link are visbile and clickable
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    Verify the link are visble
    [Teardown]    Close All Browsers

POLITY_152_Verify in the POLITY home screen the Authors, Educators options are visible under bottom Resources slider in the footer section for validating the list of free text pages.
    
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    verify authors educator link are visible and clickable
    [Teardown]    Close All Browsers

Polity_152_Verify Social media icon present in footer in home page
    [Tags]    QA    Regression    Sanity
    Open POLITY books site
    verify social media icon present
    [Teardown]    Close All Browsers
Polity_152_Verify Students, Media, Librarians(as Catalogues) options are clickable options with proper icon along with its link.
     [Tags]    QA    Regression    Sanity
    Open POLITY books site
    verify students,media are visble and clickable
    [Teardown]    Close All Browsers
Polity_152_Verify "Buy Now" and "Order Exam Copy" options are clickable and navigates to another corresponding page after clicking.
     [Tags]    QA    Regression    Sanity
    Open POLITY books site
    verify buynow and order exam copy
    
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
      
Polity_39_Verify On click Subjects menu redirects to subject in Mobile view
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
    set window size    360	 640
    Verify On click Subjects menu redirects to subject in Mobile view
    [Teardown]    Close All Browsers
    
Polity_39_verify On click series redirects to series page in Mobile view
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
    set window size    360	 640
    verify On click series redirects to series page in Mobile view
    [Teardown]    Close All Browsers
    
Polity_39_verify On click authors menu redirects to authors page in Mobile view
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
    set window size    360	 640
    verify On click authors menu redirects to authors page in Mobile view
    [Teardown]    Close All Browsers
    
Polity_39_Verify On click About menu redirects to About page in mobile view
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
    set window size    360	 640
    Verify On click About menu redirects to About page in mobile view
    [Teardown]    Close All Browsers
    
Polity_39_Verify Search Input box appears on header in mobile view
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
    set window size    360	 640
    Verify Search Input box appears on header in mobile view
    [Teardown]    Close All Browsers
    
Polity_39_Verify Join Out Mailing List appears in header in mobile view
    [Tags]    QA    Regression    Sanity

    Open POLITY books site
    set window size    360	 640
    Verify Join Out Mailing List appears in header in mobile view
    [Teardown]    Close All Browsers


    
Polity_39_Verify "The home of independent thinking" Quotes appears in top left of header in Mobile View
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
    set window size    360	 640
    Verify "The home of independent thinking" Quotes appears in top left of header in mobile view
    [Teardown]    Close All Browsers
    
Polity_42_Verify About Page
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
     Verify About Page
     [Teardown]    Close All Browsers
     
Polity_42_Verify About Page in Mobile View
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
    set window size    360	 640
    Verify About Page in Mobile View
     [Teardown]    Close All Browsers
     
Polity_36_Verify In The News Section
    [Tags]    QA    Regression    Sanity
     
    Open POLITY books site
     Verify In The News Section
     [Teardown]    Close All Browsers
     
Polity_36_Verify In The News Section in Mobile View
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
    set window size    360	 640
    Verify In The News Section in Mobile View
    [Teardown]    Close All Browsers
    
Polity_35_Verify HomePage Highlight Section
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
     Verify HomePage Highlight Section
     [Teardown]    Close All Browsers
    
Polity_35_Verify HomePage Highlight Section in Mobile View
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
     set window size    360	 640
     Verify HomePage Highlight Section in Mobile View
     [Teardown]    Close All Browsers
     
Polity_35_Verify HomePage NewBooks Section
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
     Verify HomePage NewBooks Section
     [Teardown]    Close All Browsers
    
Polity_35_Verify HomePage NewBooks Section In Mobile View
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
     set window size    360	 640
     Verify HomePage NewBooks Section
     [Teardown]    Close All Browsers
     
Polity_40_Verify Change Region in Footer
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
     Verify Change Region in Footer
     [Teardown]    Close All Browsers
     
Polity_40_Verify Change Region in Footer in Mobile View
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
     set window size     360     640
     Verify Change Region in Footer
     [Teardown]    Close All Browsers
     
Polity_130_Verify Subject Details Page
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
     #set window size     360     640
     Polity_130_Verify Subject Details Page
     [Teardown]    Close All Browsers
     
Polity_131_Verify Subject Series Refine By
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
     #set window size     360     640
     Polity_131_Verify Subject Series Refine By
     [Teardown]    Close All Browsers
     
Polity_132_Verify Series Subject Topic Refine By
    [Tags]    QA    Regression    Sanity
     Open POLITY books site
     #set window size     360     640
     Polity_132_Verify Series Subject Topic Refine By
     [Teardown]    Close All Browsers
######################################## End of Swarnashree Code###############################################################################
    
    


