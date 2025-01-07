*** Keywords ***
user should be in greenhouse merchants page
    wait until location contains    /merchants   10s    user is not on greenhouse merchants page
    capture page screenshot

merchant should be ${status}
    wait until element is visible    ${merchant_status_${status}_span}    10s
    capture page screenshot