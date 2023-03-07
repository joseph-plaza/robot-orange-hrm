*** Settings ***
Library    SeleniumLibrary
Resource    ../../config/URL.robot
Variables    ../../input/LoginStaticInput.py
Variables    ../locators/LoginLocators.py
Variables    ../locators/HomeLocators.py
Variables    ../../output/LoginSpiels.py
Variables    ../../output/LoginStaticTexts.py
Variables    ../../output/HomeStaticTexts.py

*** Keywords ***
Navigate to login page
    ${login_page}    catenate    SEPARATOR=  ${BASE_URL.${ENVIRONTMENT}}    ${LOGIN_PAGE_URL}
    go to    ${login_page}

Should display correct username label
  wait until element is visible    ${LOGIN['USERNAME_TEXTLABEL']}
  element should contain    ${LOGIN['USERNAME_TEXTLABEL']}    ${LOGIN_SPIELS['USERNAME_TEXTLABEL']}

Should display correct password label
    wait until element is visible  ${LOGIN['PASSWORD_TEXTLABEL']}
    element should contain    ${LOGIN['PASSWORD_TEXTLABEL']}    ${LOGIN_SPIELS['PASSWORD_TEXTLABEL']}

Should display correct login button label
    wait until element is visible    ${LOGIN['LOGIN_BTN']}
    element should contain    ${LOGIN['LOGIN_BTN']}    ${TEXT_LOGIN['BUTTON_LABEL']}

Should display forgot password link
    wait until element is visible  ${LOGIN['FORGOT_PASSWORD_LABEL']}
    element should contain    ${LOGIN['FORGOT_PASSWORD_LABEL']}    ${TEXT_LOGIN['FORGOT_PASSWORD_TEXTLABEL']}

Input valid username
    wait until element is visible    ${LOGIN['USERNAME_TEXTBOX']}
    input text    ${LOGIN['USERNAME_TEXTBOX']}    ${LOGIN_INPUT['VALID']['USERNAME']}

Input valid password
    wait until element is visible    ${LOGIN['PASSWORD_TEXTBOX']}
    input text    ${LOGIN['PASSWORD_TEXTBOX']}    ${LOGIN_INPUT['INVALID']['USERNAME']}

Click login button
    wait until element is visible    ${LOGIN['LOGIN_BTN']}
    click element    ${LOGIN['LOGIN_BTN']}

Should login successfully without error
    Click login button
    Get landing page text header

Get landing page text header
    wait until element is visible    ${HOME_PAGE['TEXT_HEADER']}
    element should contain    ${HOME_PAGE['TEXT_HEADER']}    ${TEXT_HOME['TEXT_HEADER']}