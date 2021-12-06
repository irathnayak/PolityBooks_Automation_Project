*** Settings ***
Documentation    Suite description
Library  String
#Library  SeleniumLibrary
Library  OperatingSystem
Library  Collections
Library  Selenium2Library
Library  BuiltIn
#Library    Browser
*** Variables ***

#########################COMMON VARIABLES#########################
${BROWSER1}     chrome
${BROWSER2}    headlessfirefox

${breadcrumsHomexpath}    //a[text()='Home']
${breadcrumsOurseries}    //li/span[text()='Our Series']   
${MenuDropDown}     //*[contains(text(),'MENU')]
#########################COMMON VARIABLES#########################


${TestingServerUrl}    https://devmonkey:d3Vm0nK3y@dev.politybooks.wiley.host/
${seriesUrl}    https://devmonkey:d3Vm0nK3y@dev.politybooks.wiley.host/series/
${ourseriesxpath}    //div[contains(text(),'Our Series')]
# ${PolityimageXpath}    //body/div[@id='root']/div[1]/div[2]/div[1]/nav[1]/div[1]/div[1]/a[1]/img[1]
# ${Subject headerXpath}    //a[contains(text(),'Subjects')]
# ${seriesheaderxpath}    //*[@id="polity_nav"]/ul/li[2]/a
# ${subjectheadercontaitext}    //div[contains(text(),'Our Subjects testing')]
# ${OuSubjectsXpath}    //span[contains(text(),'Our Subjects')]
# ${historyblockXpath}    //span[contains(text(),'History')]
# ${historypath}    //div[contains(text(),'History')]
# ${SociologyblockXpath}    //span[contains(text(),'Sociology')]
# ${subjectlistmainblockXpath}    //body/div[@id='root']/div[3]

${homePageSliderxpath}    //img[contains(@src,'data:image/png')]
${bookTitleXpath}    (//div[contains(@class,'slider_content')]//..//a[contains(@href,'dev')])[1]
${booktitlegenricxpath}    (//div[contains(@class,'slider_content')]//..//a[contains(@href,'politybooks')])[21]
${authornamexpathn}    (//div[contains(@class,'slider_content')]//..//a[contains(@href,'politybooks')])[23]
${authornameXpath}    (//div[contains(@class,'slider_content')]//..//a[contains(@href,'https://politybooks.com/')])[1]
${ReadmoreXpath}    (//div[contains(@class,'slider_content')]//..//a[contains(@href,'dev')])[3]
${bookimagexpath}    //img[contains(@src,'https://politybooks.com/wp-content/uploads/2020/05/')]
${PolityimageXpath}    //body/div[@id='root']/div[1]/div[2]/div[1]/nav[1]/div[1]/div[1]/a[1]/img[1]
${Subject headerXpath}    //a[contains(text(),'Subjects')]

${seriesheaderxpath}    //a[contains(text(),'Series')]
${AboutXpath}    //a[contains(text(),'About')]
${BlogXpath}    //a[contains(text(),'Blog')]
${AuthorXpath}    //a[contains(text(),'Authors')]
${breadcrumbsHomepageXpath}    //a[contains(text(),'Home')]
${CookiepolicyXpath}    //a[contains(text(),'Cookie Policy')]
${contactFooterXpath}    //a[contains(text(),'Contact')]

${Series headerXpath}   //*[@id="polity_nav"]/ul/li[2]/a
${Author headerXpath}   //*[@id="polity_nav"]/ul/li[3]/a
${About headerXpath}    //a[contains(text(),'About')]
${Searchbox headerXpath}    //*[@id="polity_nav"]/form/div/div[1]/input
${JoinOurMailList headerXpath}    //body/div[@id='root']/div[1]/div[1]/div[1]/span[1]/a[1]
${Thehomeofindependentthinking headerXpath}     //body/div[@id='root']/div[1]/div[1]/div[1]/div[1]

${subjectheadercontaitext}    //div[contains(text(),'Our Subjects testing')]
${seriesheadercontaitext}  //div[contains(text(),'Our Series')]
${authorheadercontaitext}   //*[@id="root"]/div[2]/div/div/div[2]/div/div[1]
${aboutheadercontaitext}    //h1[contains(text(),'About')]
${OuSubjectsXpath}    //span[contains(text(),'Our Subjects')]
${AuthorsXpath}  //span[contains(text(),'Authors')]
${historyblockXpath}    //span[contains(text(),'History')]
${historypath}    //div[contains(text(),'History')]
${SociologyblockXpath}    //span[contains(text(),'Sociology')]
${subjectlistmainblockXpath}    //body/div[@id='root']/div[3]
${urlofnewSection}    ${TestingServerUrl}news/
${privacypolicyXpath}    //a[contains(text(),'Privacy Policy')]
${termsandconditionXpath}    //a[contains(text(),'Polity End-User Licence Agreement')]
${homePageSliderxpath}    //img[contains(@src,'data:image/png')]
${bookTitleXpath}    (//div[contains(@class,'slider_content')]//..//a[contains(@href,'dev')])[1]
${booktitlegenricxpath}    (//div[contains(@class,'slider_content')]//..//a[contains(@href,'politybooks')])[21]
${authornamexpathn}    (//div[contains(@class,'slider_content')]//..//a[contains(@href,'politybooks')])[23]
${authornameXpath}    (//div[contains(@class,'slider_content')]//..//a[contains(@href,'https://politybooks.com/')])[1]
${ReadmoreXpath}    (//div[contains(@class,'slider_content')]//..//a[contains(@href,'dev')])[3]
${bookimagexpath}    //img[contains(@src,'https://politybooks.com/wp-content/uploads/2020/05/')]
${Privacypolicypagelink}    //a[contains(text(),'How We Collect Information')]

${newbooksblockXpath}    //div[contains(text(),'New Books')]
${ResourcsXpath}    //p[contains(text(),'Resources')]
${authorlinksfooter}    //body/div[@id='root']/div[6]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/a[1]
${educatorXpath}    //a[contains(text(),'Educators')]
${informationofcurrentauthorsxpath}    //h3[@id='scrollTo1']


${JoinButtonXpath}    //button[contains(text(),'join')]
${Join_Our_Mailing_ListTextXpath}    //p[contains(text(),'Join our mailing list')]
${EmailaddressfieldXpath}    //input[@id='email_address2']


${FacebookSocialIcon}    (//div[contains(@class,'sicons')]//..//a[contains(@href,'facebook')])
${youtubeiconXpath}    //div[contains(@class,'sicons')]//..//a[contains(@href,'youtube')]
${twittericonXpath}    (//div[contains(@class,'sicons')]//..//a[contains(@href,'twitter')])
${pinteresticonXpath}    (//div[contains(@class,'sicons')]//..//a[contains(@href,'pinterest')])
${footertext}    //div[contains(text(),'©2021 Polity. All Rights Reserved.')]
${Footertext2}    ©2021 Polity. All Rights Reserved.


${studentsFooterXpath}    //a[contains(text(),'Students')]
${MediaiconXpath}    //a[contains(text(),'Media')]
${CatalougesXpath}    //a[contains(text(),'Catalogues')]

${studentXpath}    //h1[contains(text(),'Students')]
${xpathget}    //h1[contains(text(),'Media')]
${Cataloges}    //h1[contains(text(),'Catalogues')]


######################Swarnahree###########################
${URL1-Polity128}    ${TestingServerUrl}subjectlanding?subject_slug=politics-international-relations
${SubjectDetailsBreadcrumsXpath}    //*[@id="root"]/div[2]/div/div/div[1]
${SubjectDetailedHeaderContent}        //div[contains(text(),'Politics & International Relations')]
${HomeBreadcrumbs}    //*[contains(text(),'Home')]
${HomePageLoadedElement}    //*[contains(text(),'The home of independent thinking')]
${SubjectDetailsSeriesList}    ${TestingServerUrl}subjectlanding?subject_slug=global-politics
${SubjectDetailsSeriesListHeader}    //*[@id="breadcrumbs"]

${AboutPageContent}    //*[contains(text(),'Polity is an international publisher in the social sciences and humanities')]
${SignUp}    //*[contains(text(),'Sign up')]
${SubmitButton}    //*[@id="fe77749"]
${InTheNews}    //div[@class='section_title pull-left']
${MoreNews}    //a[normalize-space()='More News']
${InTheNewsURL}    //*[@id="root"]/div[5]/div/div/div/div[2]/div[1]/div[2]/a/div
# //i[normalize-space()='Mediarchy']

${HomePageHighlightImg}    //*[@id="root"]/div[4]/div/div/div/div/div[2]/div/div/div/div[5]/div/div/div/div/div[1]
${HighLightHeader}     //div[normalize-space()='Highlights']
${HighLightRightArrow}    //div[@class='container news_padding']//div[@class='glyphicon glyphicon-menu-right']
${HighLightLeftArrow}    //div[@class='container news_padding']//div[@class='glyphicon glyphicon-menu-left']
${HomePageHighlightTitle}  //*[@id="root"]/div[4]/div/div/div/div/div[2]/div/div/div/div[5]/div/div/div/div/div[2]
${HomePageHighlightAuthor}  //*[@id="root"]/div[4]/div/div/div/div/div[2]/div/div/div/div[5]/div/div/div/div/div[3]

${NewBooksHeader}     //div[normalize-space()='New Books']
${NewBooksRightArrow}    //div[@class='container news_padding highlight_border']//div[@class='glyphicon glyphicon-menu-right']
${NewBooksLeftArrow}    //div[@class='container news_padding highlight_border']//div[@class='glyphicon glyphicon-menu-left']
${HomePageNewBooksTitle}  //*[@id="root"]/div[3]/div/div/div/div/div[2]/div/div/div/div[7]/div/div/div/div/div[2]/a
${HomePageNewBooksAuthor}  //*[@id="root"]/div[3]/div/div/div/div/div[2]/div/div/div/div[7]/div/div/div/div/div[3]/a
${HomePageNewBooksImg}		//*[@id="root"]/div[3]/div/div/div/div/div[2]/div/div/div/div[7]/div/div/div/div/div[1]/a/img
${ChangeRegion}    //p[@class='region']
${ChangeRegionBox}    //span[@class='change_region_box']
${EuropeRegion}    //span[normalize-space()='Albania']
${HistorySubDetailsPage}    ${TestingServerUrl}subjectlanding?subject_slug=history
${refineby}   //div[@class='refine_heading pull-left']
${Topic}    //span[normalize-space()='History Topics']
${Series}    //span[normalize-space()='Series']
${More}    //a[normalize-space()='More']
${Less}    //a[normalize-space()='Less']
${HistorySeriesDetailsPage}    ${TestingServerUrl}serieslanding?subject_slug=history&series_slug=what-is-history
${SociologySubDetailsPage}    ${TestingServerUrl}subjectlanding?subject_slug=sociology
${SubDetailsPageHeader}    //div[@class='subject_landing_bg']
${SubjectHighlight}    //body/div[@id='root']/div[@class='container-fluid highlights_review_bg']/div[@class='row']/div[1]
${RefineBySection}    //div[@class='hidden-xs hidden-sm col-sm-3 col-md-3 col-lg-3']
${SubBookSection}    //div[@class='col-xs-12 col-sm-12 col-md-12 col-lg-12 overall_refine_image']
${LoadMore}    //a[normalize-space()='Load More']

${buynow}    //a[contains(text(),'Buy Now')]
${Showmorelink}    //span[contains(text(),'Show More')]

