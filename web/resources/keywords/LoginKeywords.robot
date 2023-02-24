*** Settings ***
Library    SeleniumLibrary
Resource  ../Common.robot
Variables    ../locators/LoginLocators.py
Variables    ../../output/LoginSpiels.py


*** Keywords ***
Navigate to login page
    go to    ${BASE_URL.${ENVIRONTMENT}}

Should display username label
  wait until element is visible    ${LOGIN['USERNAME_TEXTLABEL']}
  element should contain    ${LOGIN['USERNAME_TEXTLABEL']}    ${LOGIN_SPIELS['USERNAME_TEXTLABEL']}

Should display password label
    wait until element is visible  ${LOGIN['PASSWORD_TEXTLABEL']}
    element should contain    ${LOGIN['PASSWORD_TEXTLABEL']}    ${LOGIN_SPIELS['PASSWORD_TEXTLABEL']}
