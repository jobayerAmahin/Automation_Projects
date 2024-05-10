*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}      https://www.tori.fi/
${browser}      chrome
*** Test Cases ***
Validate the Login button
    launchBrowser
    sleep    30
    click element    xpath://div[@id="frontpage-content"]/span/finn-topbar//header/nav/a[5]
*** Keywords ***
launchBrowser
    open browser    ${url}      ${browser}
    maximize browser window
close
    close browser
acceptCookies
     Wait Until Page Contains Element   ${ACCEPT_COOKIES_BUTTON}
     Click Element   ${ACCEPT_COOKIES_BUTTON}
     ${cookie_banner_closed}     Run Keyword And Return Status   Wait Until Page /*continued*/
     Does Not Contain Element   ${ACCEPT_COOKIES_BUTTON}     2s
     Run Keyword If      ${cookie_banner_closed}==False
     Click Element   ${ACCEPT_COOKIES_BUTTON}


