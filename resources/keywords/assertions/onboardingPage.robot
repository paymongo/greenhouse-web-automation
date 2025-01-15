*** Settings ***
Resource    ../page_objects/onboardingPageObjects.robot

*** Keywords ***
user should be on greenhouse onboarding page
    wait until location contains    /merchants   10s    user is not on greenhouse onboarding page
    capture page screenshot

merchant's details should be displayed
    [Arguments]    ${expected_merchant_id}
    wait until element is visible    ${merchant_acct_summary_id}
    ${actual_merchant_id}=    Get Text    ${merchant_acct_summary_id}
    should be equal    ${expected_merchant_id}    ${actual_merchant_id}
    capture page screenshot

merchant status should be ${expected_status}
    wait until element is visible    ${merchant_status_span}
    ${actual_merchant_status}=    Get Text    ${merchant_status_span}
    should be equal    Merchant ${expected_status}    ${actual_merchant_status}
    capture page screenshot

merchant status tm code should be ${expected_tm_code}
    wait until element is visible    ${merchant_status_tm_code}
    ${actual_tm_code}=    Get Text    ${merchant_status_tm_code}
    should contain   ${actual_tm_code}    ${expected_tm_code}
    capture page screenshot

merchant status tm code should be hidden
    element should not be visible    ${merchant_status_tm_code}
    capture page screenshot

merchant status tm notes should be "${expected_notes}"
    wait until element is visible    ${merchant_status_notes}
    ${actual_notes}=    Get Text    ${merchant_status_notes}
    IF    "${expected_notes}" == "${EMPTY}"
        should be equal    No info provided yet    ${actual_notes}
    ELSE
        should be equal    ${expected_notes}    ${actual_notes}
    END
    capture page screenshot

merchant status disable modal should display the blank note error
    element should be visible    ${merchant_status_tm_notes_oth_error}
    capture page screenshot