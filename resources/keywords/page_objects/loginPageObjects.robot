# Locator elements for the Greenhouse Log-in Page; xpath format is used.

*** Variables ***
${loginPage_sign_in_btn}    xpath=//div[@role="button"]

${google_email_input}    xpath=//input[@id="identifierId"]
${google_password_input}    xpath=//input[@type="password"]
${google_otp_input}    xpath=//input[@id="totpPin"]
${google_next_btn}    xpath=//button/span[contains(., 'Next')]