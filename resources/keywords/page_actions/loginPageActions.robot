*** Settings ***
Resource    ../page_objects/loginPageObjects.robot

*** Keywords ***
a user is on the greenhouse web login page
    go to greenhouse web login page
    
sign-in button is clicked
    click element    ${loginPage_sign_in_btn}

switch to google login window
    Switch Window    NEW

login credentials are entered in the google form
    [Arguments]    ${email}=${ONBOARDING_EMAIL}    ${password}=${ONBOARDING_PASSWORD}
    input text    ${google_email_input}    ${email}
    click element    ${google_next_btn}
    ${decrypted_password}    get decrypted text    ${password}
    wait until element is visible    ${google_password_input}    20s
    input password    ${google_password_input}    ${decrypted_password}
    click element    ${google_next_btn}
    ${decrypted_secret_key}=    get decrypted text    ${SECRET_KEY}
    ${totp}=    Get Totp    ${decrypted_secret_key}
    wait until element is visible    ${google_otp_input}    20s
    input text    ${google_otp_input}    ${totp}
    click element    ${google_next_btn}

login to greenhouse web
    [Arguments]    ${email}=${ONBOARDING_EMAIL}    ${password}=${ONBOARDING_PASSWORD}
    a user is on the greenhouse web login page
    sign-in button is clicked
    switch to google login window
    login credentials are entered in the google form    ${email}    ${password}
    go back to original window