*** Settings ***
Documentation    Suite description
Library  String
#Library  SeleniumLibrary
Library  OperatingSystem
Library  Collections
Library  Selenium2Library
Library  BuiltIn

#Library  ExtendedSelenium2Library

#Library    Browser
#Library  SeleniumLibrary




Resource   PolityBooks_Element.robot
Resource   PolityBooks_Resources.robot
#Suite Setup    Setup chromedriver

*** Keywords ***


Open POLITY books site
    Open browser    ${TestingServerUrl}     ${BROWSER1} headless
    Maximize Browser Window
    Sleep    2s    
    wait until page contains element    ${PolityimageXpath}
    Capture Page Screenshot
    
######################COMMON METHODS######################

################################################################ Resources By Bitan ######################################################

Open series page in polity books
    Open Browser    ${seriesUrl}    ${BROWSER1}
    Sleep    2s
    Maximize Browser Window
    Sleep    2s    
    wait until page contains element    ${ourseriesxpath}
    Capture Page Screenshot     


   

Verify Subject Header content
    
    click Element    ${Subject headerXpath}
    Sleep    5s
    wait until page contains element    ${subjectheadercontaitext}
    Sleep    2s
    Capture Page Screenshot
Verify Home and Our Subjects Links appears in header
    Sleep    2s
    wait until page contains element    ${OuSubjectsXpath}
    Sleep    2s
verify subjects list blocks appears in subject page
    Sleep    2s
    wait until page contains element    ${subjectlistmainblockXpath}
    wait until page contains element    ${historyblockXpath}
    Sleep    1s
    Capture Page Screenshot
 verify onclick subject block redirects to respective blocks
    #Sleep    2s
    Click Element    ${historyblockXpath}   
    Sleep    2s
    ${getcurrentURL}    Get Location 
    ${source}=    Set Variable    ${getcurrentURL}
    #${contains}=  Evaluate   "subject_slug" in """${source}"""
    Should Be True      "subject_slug" in """${source}"""
    Capture Page Screenshot
    

################################Swarnashree#################################
        
verify home page slider
    Sleep    2s
    ${Alllinkcountimage}=    get element count    xpath:${bookimagexpath}
    #log to console    ${Alllinkcountimage}
    @{LinkItems}    create list
   FOR    ${i}    IN RANGE    1    ${Alllinkcountimage}
      ${linkText}=    get text    xpath:(//img[contains(@src,'https://politybooks.com/wp-content/uploads/2020/05/')])[${i}]
     # log to console   ${linkText}}
      END
    Click Element    ${homePageSliderxpath}
    Sleep    2s
    Capture Page Screenshot
    Click Element    ${homePageSliderxpath}
    Page Should Contain Image    ${homePageSliderxpath}
    Click Element    ${homePageSliderxpath}
    Capture Page Screenshot
Verify Book Title in Landing page
    Sleep    2s
   ${Alllinkscount}=    get element count    xpath:${bookTitleXpath}
   log to console    ${Alllinkscount}
   ${linkText}=    get text    xpath:${bookTitleXpath}
   Should be True    len('${linkText}')>0
   log to console    ${linkText}
Verify Home Page Slider sould appear with Book Author Name
    
    Sleep    2s
    ${Authorname}=    get element count    xpath:${authornameXpath}
    log to console  ${Authorname}
        
    ${lintext1}=    Get Text    xpath=(//a)[15]
    Log To Console    ${lintext1}
    ${lintext2}=    Get Text    xpath=(//a)[16]
    Log To Console    ${lintext2}
    ${lintext3}=    Get Text    xpath=(//a)[17]
    Log To Console    ${lintext3}
    ${linklength1}    Get Length    ${lintext1}
    ${linklength2}    get Length    ${lintext2} 
    ${linklength3}    get Length    ${lintext3}       
    #Run Keyword If    ${linklength1}>1                Pass Execution    BookName--passed!!!!!!
   
verify Home Page Slider sould appear with Read More Option
    Sleep    2s
     ${readmore}=    get text    xpath:${ReadmoreXpath}
   Should be True    len('${readmore}')>0
   log to console    ${readmore}
  # Run Keyword If    len('${readmore}')>0                Pass Execution    Readmore--passed!!!!!!
Verify On click read more redirected to book detail page
    Sleep    2s
     Click Element    ${ReadmoreXpath}   
    Sleep    2s
    ${getcurrentURLofbookdetail}    Get Location 
    Log to console     ${getcurrentURLofbookdetail} 
    ${source1}=    Set Variable    ${getcurrentURLofbookdetail}
    #${contains}=  Evaluate   "subject_slug" in """${source}"""
    Should Be True      "bookdetail" in """${source1}"""
    Capture Page Screenshot
Verify on Click Book name redirects to Book detail page
    Sleep    2s
    Click Element    ${homePageSliderxpath}
    Sleep    2s
    Click element    ${booktitlegenricxpath}
    Sleep    2s
    ${getbookurl}    get location
    log to console     ${getbookurl}
    Should Be True      "bookdetail" in """${getbookurl}"""
    Capture Page Screenshot
Verify on click Author Name redirects to Author page
    Sleep    2s
    Click Element    ${homePageSliderxpath}
    Sleep    2s
    click element    ${authornamexpathn}
    Sleep    3s
    ${getauthorurl}    get location
    log to console    ${getauthorurl}   
    Should Be True      "author-books" in """${getauthorurl}"""
    Capture Page Screenshot
Verify header have Home and series breadcrums
    Sleep    2s   
    Page Should Contain Element    ${breadcrumsOurseries}    
    Sleep    2s    
    Page Should Contain Link    ${breadcrumsHomexpath}
    Capture Page Screenshot    breadcruimp.png  
Verify Series page header loaded with Our series headline  
    Sleep    2s    
    Click Link    ${seriesheaderxpath}    
    Sleep    2s    
    wait until page contains element    ${ourseriesxpath}
    Capture Page Screenshot
Verify on click home beadcrumbs redirects to home page
    Sleep    2s    
    Click Link    ${breadcrumsHomexpath}
   # ${homepageurl}        Get Location
    #Should Be True      "bookdetail" in """${homepageurl}"""  
    Sleep    2s    
    Click Element    ${homePageSliderxpath}    
    Sleep    2s    
    Click Element    ${homePageSliderxpath}
    Sleep    2s     

    Capture Page Screenshot    
Verify home screen header
    Sleep    2s    
   Page Should Contain Link    ${Subject headerXpath}
   Page Should Contain Link    ${seriesheaderxpath}    
   Page Should Contain Link    ${AboutXpath}
   Page Should Contain Link    ${BlogXpath}
Verify cookiepolicy link in footer
    Sleep    2s    
    Scroll Element Into View    ${CookiepolicyXpath}
    Sleep    5s    
    Capture Page Screenshot 
Verify Aboutus link
    Sleep    3s    
    Click Link    ${AboutXpath} 
    Sleep    3s    
    Capture Page Screenshot   
    ${getUrLofAboutus}    get location 
    log to console    ${getUrLofAboutus}   
    Should Be True      "about" in """${getUrLofAboutus}"""
Verify Contact and Cookie policy link are visible and clickable
    Sleep    2s    
    Scroll Element Into View    ${CookiepolicyXpath}
    Sleep    3s    
    Capture Page Screenshot    
    Scroll Element Into View    ${contactFooterXpath}
    Sleep    5s    
    Capture Page Screenshot    
 Verifying the link are clickable
    Sleep    3s    
    Click Link    ${CookiepolicyXpath}    
    Sleep    3s    
    Capture Page Screenshot   
    ${getcookiepolicyURL}    get location
    Should Be True      "privacy-policy" in """${getcookiepolicyURL}"""
    Sleep    2s    
    Click Image    ${PolityimageXpath}
    Scroll Element Into View    ${contactFooterXpath} 
    Click Link    ${contactFooterXpath}    
    Sleep    3s    
    Capture Page Screenshot    
    ${getContactUSURL}    get location
    Should Be True      "contact" in """${getContactUSURL}"""
 Verify the link are visble
    Sleep    3s    
    Scroll Element Into View    ${privacypolicyXpath}
    Sleep    2s    
    Capture Page Screenshot  
    Click Link    ${privacypolicyXpath}    
    ${privacypolicyurl}    get location
    Should Be True      "privacy-policy" in """${privacypolicyurl}"""
    #Click Element    ${Privacypolicypagelink}
    Sleep    3s    
   #Scroll Element Into View    ${VariableText}
    Sleep    3s    
    Capture Page Screenshot    
  #Page Should Contain   ${VariableText} 
   Scroll Element Into View    ${breadcrumbsHomepageXpath}
   Sleep    3s    
   Capture Page Screenshot    
   Click Link    ${breadcrumbsHomepageXpath}
   Sleep    3s    
   Scroll Element Into View    ${termsandconditionXpath}
   Sleep    2s    
   Capture Page Screenshot    
   Click Link    ${termsandconditionXpath} 
   Sleep    3s    
   Capture Page Screenshot  
   # Click Link    ${privacypolicyXpath}    
    ${termandcondpolicyurl}    get location
    Should Be True      "eula" in """${termandcondpolicyurl}"""        
      
       
    
         
                  
     


    Capture Page Screenshot   
    
################################################################# End of Resources By Bitan ######################################################
    

########################################################### Resources By Swarnashree ############################################################### 

Verify Subject Detailed Page Breadcrumbs
    Go to     ${URL1-Polity128}
    Sleep     2s
    Element Text Should Be    ${SubjectDetailsBreadcrumsXpath}        HomeSubjectsPolitics & International Relations
    Sleep     1s
    Capture Page Screenshot
    

Polity_131_Verify Subject Series Refine By
    Sleep     2s
    go to    ${HistorySubDetailsPage} 
    sleep    2s
    Page should contain element    ${refineby}
    Page should contain element    ${series}
    Scroll Element into View         ${more}
    click element    ${more}        
    click element    ${less}
    
Polity_132_Verify Series Subject Topic Refine By
    Sleep     2s
    go to    ${HistorySeriesDetailsPage} 
    sleep    2s
    Page should contain element    ${refineby}
    Page should contain element    ${series}
    Scroll Element into View         ${more}
    click element    ${more}        
    click element    ${less}
    
Polity_130_Verify Subject Details Page
    sleep    2s
    Go to      ${SociologySubDetailsPage} 
    sleep    2s 
    Page should contain element         ${SubDetailsPageHeader}
    Page should contain element   ${SubjectHighlight}  
    Page should contain element   ${RefineBySection}  
    Page should contain element   ${SubBookSection}   
    Page should contain element   ${LoadMore}   
    
    
    
Verify Subject Detailed Pager Header content
    
    wait until page contains element    ${SubjectDetailedHeaderContent}       
    Sleep     1s
    Capture Page Screenshot
    
Verify Breadcrumbs Redirects to Respective page
    
    Click Element    ${HomeBreadcrumbs}
    wait until page contains element    ${HomePageLoadedElement}         
    Sleep     1s
    Capture Page Screenshot
    
Verify Subject Details Header in Mobile view
    set window size    360	 640
    Verify Subject Detailed Page Breadcrumbs
    Verify Subject Detailed Pager Header content
    Verify Breadcrumbs Redirects to Respective page
    
Verify Subject Details Series List
    Go to    ${SubjectDetailsSeriesList}
    sleep    2s
    Element text should be    ${SubjectDetailsSeriesListHeader}    HomeSubjectsPolitics & International RelationsGlobal Politics
    
     
Verify Polity image appearing on header
    wait until page contains element    ${newbooksblockXpath}

verify On click Polity image redirects to home page
    Click element         ${PolityImageXPath}
    Sleep    2s
    wait until page contains element    ${newbooksblockXpath}
    Sleep    2s
    Capture Page Screenshot

verify On click Subjects menu redirects to subject
    click Element    ${Subject headerXpath}
    Sleep    5s
    wait until page contains element    ${subjectheadercontaitext}
    Sleep    2s
    Capture Page Screenshot

verify On click series redirects to series page
    sleep    2s
    click Element    ${Series headerXpath}
    Sleep    2s
    wait until page contains element    ${seriesheadercontaitext}
    Sleep    2s
    Capture Page Screenshot

verify On click authors menu redirects to authors page
    sleep    2s
    click Element    ${Author headerXpath}
    Sleep    5s
    wait until page contains element    ${authorheadercontaitext}
    Sleep    2s
    Capture Page Screenshot

verify On click About menu redirects to About page
    Sleep     2s
    click Element    ${About headerXpath}
    Sleep    2s
    wait until page contains element    ${aboutheadercontaitext}
    Sleep    2s
    Capture Page Screenshot

verify Search Input box appears on header
    wait until page contains element    ${Searchbox headerXpath}
    Sleep    2s
    Capture Page Screenshot

verify Join Out Mailing List appears in header
    wait until page contains element    ${JoinOurMailList headerXpath}
    Sleep    2s
    Capture Page Screenshot

verify "The home of independent thinking" Quotes appears in top left of header
    wait until page contains element    ${Thehomeofindependentthinking headerXpath}
    Sleep    2s
    Capture Page Screenshot
           
#########MobileTesting of POlity 39########
Verify Home Page Header image in Mobile View
    Verify Polity image appearing on header
    verify On click Polity image redirects to home page
    
Verify On click Subjects menu redirects to subject in Mobile view
   click element     ${MenuDropDown} 
   verify On click Subjects menu redirects to subject
verify On click series redirects to series page in Mobile view
   click element     ${MenuDropDown}  
   verify On click series redirects to series page
verify On click authors menu redirects to authors page in Mobile view
    click element     ${MenuDropDown}
   verify On click authors menu redirects to authors page
   
Verify On click About menu redirects to About page in mobile view
    click element     ${MenuDropDown}
    verify On click About menu redirects to About page
    
Verify Search Input box appears on header in mobile view
    click element     ${MenuDropDown}
   verify Search Input box appears on header
   
Verify Join Out Mailing List appears in header in mobile view
    click element     ${MenuDropDown}
    verify Join Out Mailing List appears in header
    
Verify "The home of independent thinking" Quotes appears in top left of header in mobile view
    click element     ${MenuDropDown}
    verify "The home of independent thinking" Quotes appears in top left of header
    
Verify About Page
    Click element    ${About headerXpath} 
    sleep    2s
    wait until page contains element    ${AboutPageContent}
    Element text should be   xpath=//*[@id="breadcrumbs"]    HomeAbout
    Click Element    ${SignUp} 
    sleep     2s
    Page should Contain Element    ${SubmitButton} 
    
Verify About Page in Mobile view
    sleep    2s
    Click element     ${MenuDropDown}
    sleep     2s
    Click element    ${About headerXpath} 
    sleep    2s
    wait until page contains element    ${AboutPageContent}
    Element text should be   xpath=//*[@id="breadcrumbs"]    HomeAbout
    Click Element    ${SignUp} 
    sleep     2s
    Page should Contain Element    ${SubmitButton} 
    
Verify In The News Section
    wait until page contains element    ${InTheNews}
    Click Element    ${MoreNews}
    Sleep    2s
    ${NewsUrl} =     Get location
    Should be equal     ${NewsUrl}      ${urlofnewSection}
    Go Back
    sleep     2s
    ${content}=  Get Element Attribute       ${InTheNewsURL}     id
    log         ${content}
    Click Element    ${InTheNewsURL}  
    sleep     2s
    Page should contain  ${content}  
    
Verify In The News Section in Mobile View
    sleep     2s
    Click Element     ${MenuDropDown}
    Verify In The News Section
verify authors educator link are visible and clickable
    Scroll Element Into View    ${ResourcsXpath}
    Sleep    3s    
    Capture Page Screenshot    
    Page Should Contain Link    ${authorlinksfooter}
    Sleep    2s    
    Page Should Contain Link    ${educatorXpath} 
    Page Should Contain Textfield    ${EmailaddressfieldXpath}
    Page Should Contain Button    ${JoinButtonXpath}
    ${mailinglisttext}=    Get Text    ${Join_Our_Mailing_ListTextXpath}
    Should Be Equal As Strings    ${mailinglisttext}    Join our mailing list            
    Click Link    ${educatorXpath}    
    Sleep    2s    
    Capture Page Screenshot    
    ${getcurrenturlEDUCATOR}    get location
    Should Be True      "educator" in """${getcurrenturlEDUCATOR}""" 
    Click Link    ${breadcrumbsHomepageXpath}
    Sleep    3s    
    Capture Page Screenshot    
    Scroll Element Into View    ${authorlinksfooter}
    Sleep    2s    
    Capture Page Screenshot    
    Click Link    ${authorlinksfooter}
    Sleep    3s        
    ${getAuthorcurrentURL}    get location
    Should Be True      "authors-2" in """${getAuthorcurrentURL}""" 
    ${gettextofcurrentauthor}=    Get Text    ${informationofcurrentauthorsxpath}
    Page Should Contain    ${gettextofcurrentauthor}    
    Log To Console    ${gettextofcurrentauthor} 
verify social media icon present
    Sleep    3s    
    Scroll Element Into View    ${youtubeiconXpath}
    Sleep    2s   
    Capture Page Screenshot    
    Page Should Contain Link    ${FacebookSocialIcon}    
    Page Should Contain Link    ${twittericonXpath}    
    Page Should Contain Link    ${pinteresticonXpath}    
    Page Should Contain Link    ${youtubeiconXpath}
    ${getTextfooterXpath}=    Get Text    ${footertext}
    Log To Console    ${getTextfooterXpath}    
    Should Be Equal    ${getTextfooterXpath}    ${Footertext2} 
    
verify buynow and order exam copy
    Sleep    3s    
    Click Link    ${bookTitleXpath}
    Sleep    2s    
    Capture Page Screenshot
    Page Should Contain Link    ${buynow}    
    Page Should Contain Element    ${Showmorelink}       

Verify no of links in div class 
    Sleep    5s    
   Click Link    ${Subject headerXpath}    
   Sleep    5s
  Click Element   ${SociologyblockXpath}    
   Wait Until Element is Visible     xpath=//*[@id="root"]/div[4]/div/div/div/div/div[2]/div
   ${AllLinksCount}=    Get Element Count    xpath=//*[@id="root"]/div[4]/div/div/div/div/div[2]/div
   Log To Console    ${AllLinksCount}     
            
    

Verify HomePage Highlight Section
   
    Execute JavaScript     window.scrollTo(0,1000)
    sleep     5s
    Page Should Contain Element     ${HighLightHeader} 
    Mouse over    ${HighLightRightArrow}
    Mouse over    ${HighLightLeftArrow}
    sleep     2s
    
    ####Book Image########
    ${HighLightImg}=  Get Element Attribute    ${HomePageHighlightImg}     id 
    Click Element    ${HomePageHighlightImg} 
     Sleep    2s
    Page Should Contain    ${HighLightImg} 
    Go Back
    ######Title#####
    sleep     2s
    ${HighLightTitle}=  Get Element Attribute    ${HomePageHighlightTitle}     id
    Sleep    2s
    Click Element    ${HomePageHighlightTitle}
     Sleep    2s  
    Page Should Contain    ${HighLightTitle} 
    Go Back
    #####Author####
    sleep     2s
    ${HighLightAuth}=  Get Element Attribute    ${HomePageHighlightAuthor}     id
    Sleep    2s
    Click Element    ${HomePageHighlightAuthor}
    Page Should Contain    ${HighLightAuth} 
    
Verify HomePage Highlight Section in Mobile View
       sleep     5s
    Scroll Element into View       ${HomePageHighlightTitle} 
    sleep     5s
    Page Should Contain Element     ${HighLightHeader} 
    Mouse over    ${HighLightRightArrow}
    Mouse over    ${HighLightLeftArrow}
    
    
    ####Book Image########
    sleep     2s
    ${HighLightImg}=  Get Element Attribute    ${HomePageHighlightImg}     id 
    Click Element    ${HomePageHighlightImg} 
     Sleep    2s
    Page Should Contain    ${HighLightImg} 
    Go Back
    ######Title#####
    sleep     2s
     Scroll Element into View       ${HomePageHighlightTitle} 
    ${HighLightTitle}=  Get Element Attribute    ${HomePageHighlightTitle}     id
    Sleep    2s
    Click Element    ${HomePageHighlightTitle}
     Sleep    2s  
    Page Should Contain    ${HighLightTitle} 
    Go Back
    #####Author####
    sleep     2s
    Scroll Element into View       ${HomePageHighlightTitle} 
    ${HighLightAuth}=  Get Element Attribute    ${HomePageHighlightAuthor}     id
    Sleep    2s
    Click Element    ${HomePageHighlightAuthor}
    Sleep    2s 
    Page Should Contain    ${HighLightAuth}
    
Verify HomePage NewBooks Section
         sleep     5s
    Scroll Element into View       ${HomePageNewBooksTitle} 
    sleep     5s
    Page Should Contain Element     ${NewBooksHeader} 
    Mouse over    ${NewBooksRightArrow}
    Mouse over    ${NewBooksLeftArrow}
    
    
    ####Book Image########
    sleep     2s
    ${NewBooksImg}=  Get Text    ${HomePageNewBooksImg}     
    log to console     ${NewBooksImg}
    Click Element    ${HomePageNewBooksImg} 
     Sleep    2s
    Page Should Contain    ${NewBooksImg} 
    Go Back
    ######Title#####
    sleep     2s
     Scroll Element into View       ${HomePageNewBooksTitle} 
    ${NewBooksTitle}=  Get Text    ${HomePageNewBooksTitle}     
    Sleep    2s
    Click Element    ${HomePageNewBooksTitle}
     Sleep    2s  
    Page Should Contain    ${NewBooksTitle} 
    Go Back
    #####Author####
    sleep     2s
    Scroll Element into View       ${HomePageNewBooksTitle} 
    ${NewBooksAuth}=  Get Text    ${HomePageNewBooksAuthor}     
    Sleep    2s
    Click Element    ${HomePageNewBooksAuthor}
    Sleep    2s 
    Page Should Contain    ${NewBooksAuth}
    

        
verify students,media are visble and clickable
    Sleep    3s    
    Scroll Element Into View    ${MediaiconXpath} 
    Capture Page Screenshot    
    Sleep    3s    
    Page Should Contain Link    ${studentsFooterXpath}   
    Page Should Contain Link    ${CatalougesXpath}
    Click Link    ${studentsFooterXpath}    
    Sleep    3s    
    Capture Page Screenshot    
    ${getTextStudenXpath}=    Get Text    ${studentXpath} 
    Should Be String    ${getTextStudenXpath}   
    Click Link    ${breadcrumsHomexpath}    
    Sleep    3s    
    Capture Page Screenshot    
    Scroll Element Into View    ${MediaiconXpath}
    Sleep    3s    
    Capture Page Screenshot    
    Click Link    ${MediaiconXpath}    
    Sleep    3s    
    Capture Page Screenshot   
    ${getMediaText}=    Get Text    ${xpathget}
    Should Be Equal As Strings    ${getMediaText}    Media  
    Click Link    ${breadcrumsHomexpath}    
    Sleep    5s    
    Capture Page Screenshot
    Sleep    2s    
    Scroll Element Into View    ${CatalougesXpath}
    Click Link    ${CatalougesXpath}    
    Sleep    5s    
    Capture Page Screenshot    
    ${getCatalogetext}=    Get Text    ${Cataloges}
    Log To Console    ${getCatalogetext}    
    Should Be Equal As Strings    ${getCatalogetext}    Catalogues                   
        
               


Verify Change Region in Footer
    sleep    2s
    #Checking Change Region Header
    Scroll Element into View    ${ChangeRegion} 
    

    #Checking Region Default Value
    ${RegionValue}=      Get Text       ${ChangeRegionBox}      
    log to console    ${RegionValue}
    Should be equal   United States     ${RegionValue}
    
    #ChangeRegion
    Click Element    ${ChangeRegionBox}
    Sleep    1s
    Click Element    ${EuropeRegion} 
    Sleep     2s
    Scroll Element into View    ${ChangeRegion} 
    ${RegionValue2}=      Get Text         ${ChangeRegionBox} 
    Should be equal   Albania     ${RegionValue2}
    

    
    
    
    
    
    
    
      
    
################################################################# End of Resources By Swarnashree ######################################################
    
     

