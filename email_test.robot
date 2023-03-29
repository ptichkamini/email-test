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
${fakeMailLogin}    prettyinpink
${fakeMailPassword}     lovely12


*** Test Cases ***
Test email login
    Open email page
    Accept Cookies
    Input username and password
    Click on the login button
    Check if the user is logged in
    Close browser

Test email login with incorrect details
    Open email page
    Accept Cookies
    Input incorrect details
    Click on the login button
    Check if login failed
    Close browser

*** Keywords ***
Open email page
    Open Browser    ${mailURL}  ${browser}
    Sleep   2

Accept Cookies
    Click Button   ${cookiesButton}
    Sleep   2

Input username and password
    Input Text      ${userField}    ${mailLogin}
    Input Text      ${passwordField}    ${mailPassword}

Click on the login button
    Click Element   ${loginButton}

Check if the user is logged in
    Page Should Contain     Odebrane

Close browser
    Close All Browsers

Input incorrect details
    Input Text      ${userField}    ${fakeMailLogin}
    Input Text      ${passwordField}    ${fakeMailPassword}

Check if login failed
    Page Should Contain     nieprawidłowe  
