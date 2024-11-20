*** Variables ***

# STAGING
${STAGING_GREENHOUSE_URL}    https://greenhouse.staging.paymongocorp.com

# UAT
${UAT_GREENHOUSE_URL}    https://greenhouse.uat.paymongocorp.com

# Test Account
${TEST_EMAIL}    eng.user@paymongo.com
${TEST_PASSWORD}    crypt:kk/TSt64n1cI8nCj4ygubvVgNGmmDZWXenM0mptDemTaqnk2yOA1xltGr8RN4J2U9w9qTBacQZyvX8xVCtZAc8y92w==

# OTP
${SECRET_KEY}    crypt:ei28+NGIPSqubRGiJNYnZovjxiFSxhIZaHG6G/Mw3ENq9TRf3B/BVFYyilCGyjAK7pkWz1GPrm3nBjfBoaw+91UuH3phlGQY4sMemXKRlzRz4z8uA/oH

# WebDriver
${BROWSER}    firefox

#Headful Browser
${HEADFUL}    False
${DISPLAY}    :99
${xvfb_running}    ${None}