*** Settings ***
Library     SeleniumLibrary
Library     resource.py
Library    String
Resource    Keywords.robot

*** Variables ***
${url}      https://https://www.google.com/
${count}    0

*** Test Cases ***
Executor
    [Documentation]    Captures a screenshot, extracts text, and clicks at the found coordinates if available.
    Open Browser    browser=chrome  url=${url}

    Maximize Browser Window

    ${screenshotDir}    Get Screenshot Path
    Set Global Variable    ${screenshotDir}

    ${Path}    Take Screenshot    text
    ${text}    Extract Text From Image   ${Path}
    Click At Coordinate    ${Path}    Female
    Log To Console    ${text}
#







