*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${mailURL}    https://poczta.wp.pl
${browser}    Chrome
${mailLogin}
${mailPassword}
${cookiesButton}    css:button.az2m2j2

*** Test Cases ***
Open email page
Accept Cookies
Input username and password
Click on the login button
Check if the user is logged in
Close browser

*** Keywords ***
Open email page
    Open Browser    ${mailURL}  ${browser}

Accept Cookies
    Clikc Element   ${cookiesButton}