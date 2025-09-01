*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Login with correct Username and Password
    Open Browser    https://ivvi.dev    chrome
    Click Element    xpath=//*[contains(text(), "Login")]
    Sleep   1s

    Input Text    css=input[type="email"]    cecilwakeley@gmail.com
    Click ELement   xpath=//*[contains(text(), "Continue")]
    Sleep   3s
    Input Text    css=input[type="password"]     Beholdhowgood!133

    Sleep   1s
    Click ELement   xpath=//*[contains(text(), "Continue")]

    Sleep    1s
    Click Element    xpath=//*[@id="js-octopus-app-container"]/div/div[1]/div[2]/div[5]/div/div[1]/div[2]/div/div/a
    Sleep    1s

    Press Keys    xpath=//body    TAB
    Sleep   2s

    Press Keys    xpath=//body    MyUsername

    Sleep   3s


