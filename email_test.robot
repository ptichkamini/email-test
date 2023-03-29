*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${mailURL}    https://poczta.wp.pl
${browser}    Chrome
${mailLogin}    testerwsb_t1
${mailPassword}     adam1234
${cookiesButton}    //button[contains(text(), 'AKCEPTU')]
${userField}      //*[@id="login"]
${passwordField}    //*[@id="password"]
${loginButton}  css:button.sc-bczRLJ 


*** Test Cases ***
Test email login
    Open email page
    Accept Cookies
    Input username and password
    Click on the login button
    Check if the user is logged in
    Close browser

*** Keywords ***
Open email page
    Open Browser    ${mailURL}  ${browser}
    Sleep   5

Accept Cookies
    Click Button   ${cookiesButton}
    Sleep   5

Input username and password
    Input Text      ${userField}    ${mailLogin}
    Input Text      ${passwordField}    ${mailPassword}

Click on the login button
    Click Element   ${loginButton}

Check if the user is logged in
    Page Should Contain     Odebrane

Close browser
    Close Browser
