*** Settings ***
Resource    ./URL.robot

*** Variables ***
#Please choose the type of environment for the test execution and browser if necessary, else the test will be executed on the default browser firefox.
#BROWSER: chrome, firefox, ie, safari
#ENVIRONTMENT: my_site

${BROWSER} =  chrome
${ENVIRONTMENT} =   my_site
