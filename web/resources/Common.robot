*** Settings ***
Library    SeleniumLibrary
Resource  ../config/Browser.robot


*** Keywords ***
Open application
  open browser  about:blank  ${BROWSER}

Close application
  close browser