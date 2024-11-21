*** Variables ***

# STAGING
${STAGING_GREENHOUSE_URL}    https://greenhouse.staging.paymongocorp.com

# UAT
${UAT_GREENHOUSE_URL}    https://greenhouse.uat.paymongocorp.com

# Test Account
${TEST_EMAIL}    eng.user@paymongo.com
${TEST_PASSWORD}    crypt:kk/TSt64n1cI8nCj4ygubvVgNGmmDZWXenM0mptDemTaqnk2yOA1xltGr8RN4J2U9w9qTBacQZyvX8xVCtZAc8y92w==

# OTP
${SECRET_KEY}    crypt:XW55um9WPkx/z8jx4AGmS7N20+z8X+1F2e70eWoqvRu4c6Pbm+qodwkVwpQz5Mo/8v27igNkzriTzHwN6OW+MDnHR/rcyP8CbHfHlycRoS8=

# WebDriver
${BROWSER}    firefox

#Headful Browser
${HEADFUL}    False
${DISPLAY}    :99
${xvfb_running}    ${None}