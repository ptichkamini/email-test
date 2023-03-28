*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${mailURL}    https://poczta.wp.pl
${browser}    Chrome
${mailLogin}
${mailPassword}

*** Test Cases ***
Open email page
Accept Cookies
Input username and password
Click on the login button
Check if the user is logged in
Close browser

*** Keywords ***