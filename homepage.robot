*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}      https://login.schibsted.fi/authn/?client_sdrn=sdrn%3Aschibsted.fi%3Aclient%3A650421cf50eeae31ecd2a2d3&nonce=3f81c07f-a66a-4fc6-a105-e720cda65f11&state=cc4017c7d525d1cd0b296cdcdb09b7356d19485c3885cbca4adbb857321d577dc47a834a9850c08953e9e693e72e94ad9917030f9224b00ed2daa03d72c04b86327ffd2ac0bb71b058ff3a2a7589a220a80aeb077eca8effbfb791c0470596ae6c5d3d9747667cbfb8fb763dc534eda27781cd1d28d5cbfeef9b9de4166e12d1&prompt=select_account&client_id=650421cf50eeae31ecd2a2d3&one_step_login=false&teaser=aurora_teaser_tori_web
${browser}      chrome
*** Test Cases ***
Validate a valid email address
    launchBrowser
    set browser implicit wait    5s
    input text    id:email    jam@gmail.com
    click button    xpath://button[@id="ActionButton_0"]
Validate an invalid email address
    launchBrowser
    set browser implicit wait    5s
    input text    id:email    jamgmailcom
    click button    xpath://button[@id="ActionButton_0"]
Validate the password following password complexity
    launchBrowser
    set browser implicit wait    5s
    input text    id:email    jam@gmail.com
    click button    xpath://button[@id="ActionButton_0"]
    click element    xpath://input[@id="password"]
    input text    id:password       Hfss6%6#

*** Keywords ***
launchBrowser
    open browser    ${url}      ${browser}
    maximize browser window
close
    close browser



