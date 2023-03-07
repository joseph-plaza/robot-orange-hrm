*** Settings ***
Resource    ../resources/keywords/LoginKeywords.robot
Resource    ../config/Browser.robot

Test Setup    Open application
Test Teardown  Close application
Force Tags    WEB  LOG

#robot -d web/results web/tests/Login.robot

*** Test Cases ***
Check login username label
    [Tags]    SMOKE
    Navigate to login page
    Should display correct username label

Check login password lable
    [Tags]    SMOKE
    Navigate to login page
    Should display correct password label

Check login button label
    [Tags]    SMOKE
    Navigate to login page
    Should display correct login button label

Check forgot password label
    [Tags]    SMOKE
    Navigate to login page
    Should display forgot password link

Check user login with valid username and password
    [Tags]  SMOKE
    Navigate to login page
    Input valid username
    Input valid password
    Should login successfully without error
