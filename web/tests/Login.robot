*** Settings ***
Resource    ../resources/keywords/LoginKeywords.robot
Resource    ../resources/Common.robot

Test Setup    Open application
Test Teardown  Close application
Force Tags    WEB  LOG

#robot -d web/results web/tests/Login.robot

*** Test Cases ***
Check login username label
    Navigate to login page
    Should display username label

Check login password lable
    Navigate to login page
    Should display password label