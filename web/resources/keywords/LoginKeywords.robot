*** Settings ***
Library    SeleniumLibrary
Resource  ../Common.robot
Variables    ../locators/LoginLocators.py
Variables    ../../output/LoginSpiels.py


*** Keywords ***
I'm on the login page
    go to    ${BASE_URL.${ENVIRONTMENT}}

I checked on the user placeholder
    get text  css:div#divUsername>span.form-hint
#    ${LOGIN['USERNAME_TEXTBOX']}

I should be able to get the correct placeholder label
    element text should be  css:div#divUsername>span.form-hint    Username
#    ${LOGIN['USERNAME_PLACEHOLDER']}