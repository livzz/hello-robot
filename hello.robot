*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${GOOGLE URL}      https://www.google.com/
${BROWSER}         Firefox

*** Test Cases ***
Valid Search
    Set Selenium Speed    .1 seconds
    Open Browser To Google
    Input Search Keyword    redhat
    Capture Search Result
    [Teardown]    Close Browser


*** Keywords ***
Open Browser To Google
    Open Browser    ${GOOGLE URL}    ${BROWSER}
    Title Should Be    Google
    Wait Until Element Is Visible  name=q
    Capture Page Screenshot    landing.png

Input Search Keyword
    [Arguments]    ${keyword}
    Set Focus To Element    name=q
    Input Text    name=q    ${keyword}
    Capture Page Screenshot    landing-input.png
    Press Keys    name=q    ENTER

Capture Search Result
    Wait Until Element Is Visible  id=search
    Capture Page Screenshot    search-result.png
