*** Settings ***
Resource    ../resources/keywords/LoginKeywords.robot
Resource    ../resources/Common.robot

Test Setup    Open application
Test Teardown  Close application
Force Tags    WEB  LAN  LOG

#robot -d web/results web/tests/Login.robot

*** Test Cases ***
Check user login placeholder
    Given I'm on the login page
    When I checked on the user placeholder
    Then I should be able to get the correct placeholder label

#User should be able login with a valid credentials
#  [Tags]  SMOKE1  FORM
#  Given I'm on the login page
#  When I enter a valid username
#  And a valid password
#  Then I should be able to successfully login without error
#
#User shouldn't be able login with invalid password
#  [Tags]  SMOKE2  FORM
#  Given I'm on the login page
#  When I attemp to login  ${INVALID_PASSWORD_USER}
#  Then I should be able to receive an error message  ${INVALID_PASSWORD_USER.Expected}
#
#User shouldn't be able login with blank username and password
#  [Tags]  SMOKE3  FORM
#  Given I'm on the login page
#  When I attemp to login  ${BLANK_CREDENTIALS}
#  Then I should be able to receive an error message  ${BLANK_CREDENTIALS.Expected}
