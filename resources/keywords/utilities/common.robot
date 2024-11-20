*** Keywords ***
start browser instance
    [Arguments]    ${ENV}=${ENV}
    IF    "${BROWSER}" == "firefox"
        setup firefoxdriver
    ELSE
        setup chromedriver
    END
    set selenium speed    0.5 second
    set selenium implicit wait    10 seconds
    set screenshot directory    EMBED
    go to    ${ENV}

end browser instance
    close all browsers

setup firefoxdriver
    ${firefox_options}=    Evaluate    sys.modules['selenium.webdriver'].FirefoxOptions()    sys, selenium.webdriver
    #use platform.system() to identify platform
    ${system}=    Evaluate    platform.system()    platform
    log    OS is ${system}
    log    HEADFUL=${HEADFUL} xvfb_running=${xvfb_running}
    IF    ${HEADFUL} and ${xvfb_running}
        call method    ${firefox_options}   add_argument    --width\=1920
        call method    ${firefox_options}   add_argument    --height\=1080
        call method    ${firefox_options}   add_argument    --disable-gpu
    ELSE IF    "${system}" == "Linux"
        call method    ${firefox_options}   add_argument    --headless
    END
    #check existence of geckodriver from docker container. otherwise, fallback to local geckodriver
    ${geckodriver_exists}=    run process    /bin/ls /usr/bin/geckodriver    shell=yes
    IF    "${geckodriver_exists.stdout}" == "/usr/bin/geckodriver"
        set local variable    ${geckodriver}    /usr/bin/geckodriver
    ELSE
        set local variable    ${geckodriver}    ${EXECDIR}/geckodriver_linux
    END
    #create webdriver based on OS
    IF    "${system}" == "Linux"
        open browser    browser=Firefox    executable_path=${geckodriver}    options=${firefox_options}    service_log_path=${{os.path.devnull}}
    ELSE IF    "${system}" == "Darwin"
        open browser    browser=Firefox    executable_path=${EXECDIR}/geckodriver_mac    options=${firefox_options}    service_log_path=${{os.path.devnull}}
    END

setup chromedriver
    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    #use platform.system() to identify platform
    ${system}=    Evaluate    platform.system()    platform
    log    OS is ${system}
    log    HEADFUL=${HEADFUL} xvfb_running=${xvfb_running}
    IF    ${HEADFUL} and ${xvfb_running}
        call method    ${chrome_options}   add_argument    window-size\=1920,1080
        call method    ${chrome_options}   add_argument    window-position\=0,0
    ELSE
        call method    ${chrome_options}   add_argument    headless
    END
    call method    ${chrome_options}   add_argument    disable-gpu
    call method    ${chrome_options}   add_argument    no-sandbox
    call method    ${chrome_options}   add_argument    disable-dev-shm-usage
    call method    ${chrome_options}   add_argument    remote-debugging-port\=9222
    ${options}=     call method     ${chrome_options}    to_capabilities
    #check existence of chromedriver from docker container. otherwise, fallback to local chromedriver
    ${chromedriver_exists}=    run process    /bin/ls /usr/bin/chromedriver    shell=yes
    IF    "${chromedriver_exists.stdout}" == "/usr/bin/chromedriver"
        set local variable    ${chromedriver}    /usr/bin/chromedriver
    ELSE
        #select webdriver based on OS
        IF    "${system}" == "Linux"
            set local variable    ${chromedriver}    ${EXECDIR}/chromedriver_linux
        ELSE IF    "${system}" == "Darwin"
            set local variable    ${chromedriver}    ${EXECDIR}/chromedriver_mac
        END
    END
    #create webdriver based on OS
    IF    "${system}" == "Linux"
        open browser     chrome     executable_path=${chromedriver}    desired_capabilities=${options}    service_log_path=${{os.path.devnull}}
    ELSE IF    "${system}" == "Darwin"
        log    OS is ${system}. Local non-docker run is not supported using Chrome, reverting to Firefox.    warn
        setup firefoxdriver
    END

go to greenhouse web login page
    start browser instance    ${${ENV}_GREENHOUSE_URL}

go back to original window
    Select Window