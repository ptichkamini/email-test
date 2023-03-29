My attempt to automate email login testing using robot framework and selenium library

First problem: class of cookiesButton changes class each time I reload the browser - I fixed it by using button[contains(text(), 'SOMETEXT')] syntax

Second problem: Close Browser keyword doesn't close the whole window - I needed to use Close All Browsers

-------

Next steps: Write a test case with incorrect login details as the 2nd test