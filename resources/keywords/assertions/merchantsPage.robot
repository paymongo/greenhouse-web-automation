*** Keywords ***
user should be in greenhouse merchants page
    wait until location contains    /merchants   10s    user is not on greenhouse merchants page
    capture page screenshot