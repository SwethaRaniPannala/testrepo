*** Settings ***
Documentation       basic info
Library             SeleniumLibrary

*** Test Cases ***
User access website
     [Documentation]            test info
     [Tags]                     test 1
     Open Browser               about:blank     chrome
     set selenium speed         2 sec
     Go to                      https://www.willys.se/
     Wait until page contains   Handla billig mat online
     Delete All Cookies
     Input Text                 xpath://*[@id="__next"]/div/div[2]/div[1]/form/div/div/input      vattenmelon
     Click Button               xpath://*[@id="__next"]/div/div[2]/div[1]/form/button
     Wait until page contains   Sökord: vattenmelon


