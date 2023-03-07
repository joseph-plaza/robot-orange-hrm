*** Settings ***
Library      SeleniumLibrary
Resource    ./URL.robot

*** Variables ***
#BROWSER: HeadlessChrome, HeadlessFirefox, safari
#ENVIRONTMENT: localhost

${BROWSER} =    HeadlessChrome
${ENVIRONTMENT} =    localhost

*** Keywords ***
Open Headless Chrome Browser
    ${chrome_options}=    Evaluate                         sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method           ${chrome_options}                add_argument                                         test-type
    Call Method           ${chrome_options}                add_argument                                         --disable-extensions
    Call Method           ${chrome_options}                add_argument                                         --headless
    Call Method           ${chrome_options}                add_argument                                         --disable-gpu
    Call Method           ${chrome_options}                add_argument                                         --no-sandbox
    Call Method           ${chrome_options}                add_argument                                         --disable-dev-shm-usage
    Call Method           ${chrome_options}                add_argument                                         --disable-popup-blocking
    Call Method           ${chrome_options}                add_argument                                         --ignore-certificate-errors
    Create Webdriver      Chrome                           chrome_options=${chrome_options}
    Set Window Size       1400                             600

Open Headless Firefox Browser
    ${firefox options}=     Evaluate    sys.modules['selenium.webdriver'].firefox.webdriver.Options()    sys, selenium.webdriver
    Call Method    ${firefox options}   add_argument    -headless
    Create Webdriver    Firefox    firefox_options=${firefox options}
    Set Window Size    1920    1080

Open Application
    Run Keyword If      '${BROWSER}' == 'HeadlessChrome' or '${BROWSER}' == 'headlesschrome'       Open Headless Chrome Browser
    ...     ELSE IF     '${BROWSER}' == 'HeadlessFirefox' or '${BROWSER}' == 'headlessfirefox'     Open Headless Firefox Browser
    ...     ELSE     open browser  about:blank  chrome
    Set Selenium Speed    0.5

Close Application
    close all browsers