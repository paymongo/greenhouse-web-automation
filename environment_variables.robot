*** Variables ***

# STAGING
${STAGING_GREENHOUSE_URL}    https://greenhouse.staging.paymongocorp.com

${STAGING_TEST_MERCHANT_ID}    org_XKz2uJkWtFA5awQXTamc4V4s

# UAT
${UAT_GREENHOUSE_URL}    https://greenhouse.uat.paymongocorp.com

${UAT_TEST_MERCHANT_ID}    org_of58YSULsv3kZzUPCpajmcFz

# Test Accounts
${ONBOARDING_EMAIL}    eng.user@paymongo.com
${ONBOARDING_PASSWORD}    crypt:p9mugezq7EayFoeXN4TM4jXHQy/96X+emnJdHp9G2lcc5qWffgZtJwsvo/s0gruUSMaeDIes42hvUCxJBUtiV/VSFA==

# OTP
${SECRET_KEY}    crypt:XW55um9WPkx/z8jx4AGmS7N20+z8X+1F2e70eWoqvRu4c6Pbm+qodwkVwpQz5Mo/8v27igNkzriTzHwN6OW+MDnHR/rcyP8CbHfHlycRoS8=

# WebDriver
${BROWSER}    firefox

# Headful Browser
${HEADFUL}    False
${DISPLAY}    :99
${xvfb_running}    ${None}