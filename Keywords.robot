*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Take Screenshot
    [Arguments]     ${name}
    ${count}    Evaluate        ${count} + 1
    Set Global Variable         ${count}
    ${count}    Evaluate        format(${count}, '05d')
    Capture Page Screenshot     ${screenshotDir}//${count}_${name}.png
    RETURN  ${screenshotDir}//${count}_${name}.png