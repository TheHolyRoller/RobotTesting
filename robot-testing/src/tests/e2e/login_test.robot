*** Settings ***
Library    Browser

*** Test Cases ***
User Can Log In
    New Browser    chromium    headless=false
    New Page       https://ivvi.dev/
    Click          text=Login
    Fill Text      css=input[type="email"]    cecilwakeley@gmail.com
    Click          text=Continue
    Fill Text      css=input[type="password"]    Beholdhowgood!133
    Click          text=Continue
    Sleep          2s
    Click          css=.js-tour-new-mm

    Click          css=#svg
    Sleep          1s
    Browser.Press Keys    :focus    Tab
    Browser.Fill Text     :focus    JustTest
    Browser.Press Keys    :focus    Enter

    Close Browser
