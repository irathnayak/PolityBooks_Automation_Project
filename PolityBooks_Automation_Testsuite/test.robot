*** Settings ***
Library  String
Library  OperatingSystem
Library  Collections
Library  Selenium2Library
Library  BuiltIn
Resource   PolityBooks_Element.robot
Resource   PolityBooks_Resources.robot


*** Test Cases ***

Polity Books Login
    open browser   ${TestingServerUrl}	${BROWSER1}
    #Execute JavaScript    $('span.heading.size-3.xclose').click()
    maximize browser window
   # PolityBooks Login

