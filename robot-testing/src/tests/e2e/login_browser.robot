*** Settings ***
Library    Browser

*** Variables ***
${URL}        https://ivvi.dev
${USERNAME}   cecilwakeley@gmail.com
${PASSWORD}   Beholdhowgood!133

*** Test Cases ***
Login With Valid Credentials
    New Browser    chromium    headless=false
    New Context    viewport={'width': 1920, 'height': 1080}
    New Page    ${URL}

    Sleep   1s

     Click    text=Login

    # Click into username field and type
    Click    input[type="email"]
    Fill Text    input[type="email"]    ${USERNAME}

    Click    text=Continue

    Sleep    2s

    # Click into password field and type
    Click    input[type="password"]
    Fill Text    input[type="password"]    ${PASSWORD}

    Sleep   1s

    Click    text=Continue


    Sleep   3s


    #Create a new map here 


    Click    xpath=//*[@id="js-octopus-app-container"]/div/div[1]/div[2]/div[5]/div/div[1]/div[2]

    Sleep   1s


    Click    css=#svg

    Sleep   1s


   # ${box}=    Get BoundingBox    css=#svg
    #${x}=    Evaluate    ${box}[x] + (${box}[width] / 2)
    #${y}=    Evaluate    ${box}[y] + (${box}[height] / 4)
    #Mouse Move    ${x}    ${y}
    #Mouse Button    click
    Mouse Move    1032    175
    Mouse Button    click



    Sleep   2s

    Mouse Button    click

    Mouse Button    click

    Mouse Button    click
    Mouse Button    click
    Sleep   2s

    Mouse Button    click
    Mouse Button    click



    
    Sleep   2s

    Keyboard Input  insertText  TestRoot 


    Sleep   2s

    Keyboard Key    press    Tab


    Sleep   2s
    
    Keyboard Input    insertText    MyUsername


    Sleep   1s

    Click   css=#svg3   


    Sleep   7s


    #Now refresh the browser 

    Click   xpath=//*[@id="js-octopus-app-container"]/div/div[1]/div[2]/div[5]/div/div[1]/div[2]/div/div/a/div
   # Keyboard Key    down    Control
    #Keyboard Key    press    r
    #Keyboard Key    up    Control

    #Now check if the branch & map is still there 



    Sleep   5s


    Close Browser
