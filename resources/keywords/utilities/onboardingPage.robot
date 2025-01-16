*** Keywords ***
get xpath for tm code option
    [Arguments]    ${tm_code}
    [Return]     xpath=//ul//div[contains(text(),'${tm_code}')]