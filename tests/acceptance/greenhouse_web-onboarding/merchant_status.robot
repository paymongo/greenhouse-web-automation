*** Settings ***
Resource    ../../resource_collection.robot
Resource    ../../../resources/keywords/page_actions/loginPageActions.robot
Resource    ../../../resources/keywords/page_actions/onboardingPageActions.robot
Suite Setup    login to greenhouse web
Suite Teardown    end browser instance

*** Test Cases ***

# Disable merchant
Merchant status is changed to disabled WHEN TM code is M01 and note is not empty
    GIVEN user should be on greenhouse onboarding page
    AND merchant is entered on the search bar    ${${ENV}_TEST_MERCHANT_ID}
    AND merchant's details should be displayed    ${${ENV}_TEST_MERCHANT_ID}
    AND merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M01    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be M01
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M01 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M01
    THEN merchant status should be disabled
    AND merchant status tm code should be M01
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M02 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M02    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be M02
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M02 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M02
    THEN merchant status should be disabled
    AND merchant status tm code should be M02
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M03 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M03    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be M03
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M03 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M03
    THEN merchant status should be disabled
    AND merchant status tm code should be M03
    AND merchant status tm notes should be "${EMPTY}"
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M04 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M04    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be M04
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M04 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M04
    THEN merchant status should be disabled
    AND merchant status tm code should be M04
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M05 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M05    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be M05
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M05 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M05
    THEN merchant status should be disabled
    AND merchant status tm code should be M05
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M08 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M08    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be M08
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M08 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M08
    THEN merchant status should be disabled
    AND merchant status tm code should be M08
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M09 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M09    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be M09
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M09 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M09
    THEN merchant status should be disabled
    AND merchant status tm code should be M09
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M10 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M10    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be M10
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M10 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M10
    THEN merchant status should be disabled
    AND merchant status tm code should be M10
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M11 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M11    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be M11
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M11 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M11
    THEN merchant status should be disabled
    AND merchant status tm code should be M11
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M12 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M12    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be M12
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M12 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M12
    THEN merchant status should be disabled
    AND merchant status tm code should be M12
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M13 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M13    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be M13
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M13 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M13
    THEN merchant status should be disabled
    AND merchant status tm code should be M13
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M14 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M14    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be M14
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is M14 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=M14
    THEN merchant status should be disabled
    AND merchant status tm code should be M14
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is VD01 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=VD01    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be VD01
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is VD01 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=VD01
    THEN merchant status should be disabled
    AND merchant status tm code should be VD01
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is TD01 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=TD01    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be TD01
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is TD01 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=TD01
    THEN merchant status should be disabled
    AND merchant status tm code should be TD01
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is DX01 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=DX01    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be DX01
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is DX01 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=DX01
    THEN merchant status should be disabled
    AND merchant status tm code should be DX01
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is HR01 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=HR01    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be HR01
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is HR01 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=HR01
    THEN merchant status should be disabled
    AND merchant status tm code should be HR01
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is HR02 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=HR02    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be HR02
    AND merchant status tm notes should be "QA Web Automation Note."
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is HR02 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=HR02
    THEN merchant status should be disabled
    AND merchant status tm code should be HR02
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is HR03 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=HR03    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be HR03
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is HR03 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=HR03
    THEN merchant status should be disabled
    AND merchant status tm code should be HR03
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is HR04 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=HR04    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be HR04
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is HR04 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=HR04
    THEN merchant status should be disabled
    AND merchant status tm code should be HR04
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is VT01 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=VT01    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be VT01
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is VT01 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=VT01
    THEN merchant status should be disabled
    AND merchant status tm code should be VT01
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is VT02 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=VT02    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be VT02
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is VT02 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=VT02
    THEN merchant status should be disabled
    AND merchant status tm code should be VT02
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is VT03 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=VT03    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be VT03
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is VT03 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=VT03
    THEN merchant status should be disabled
    AND merchant status tm code should be VT03
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is DM01 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=DM01    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be DM01
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is DM01 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=DM01
    THEN merchant status should be disabled
    AND merchant status tm code should be DM01
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is DP01 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=DP01    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be DP01
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is DP01 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=DP01
    THEN merchant status should be disabled
    AND merchant status tm code should be DP01
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is PYM01 and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=PYM01    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be PYM01
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is PYM01 and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=PYM01
    THEN merchant status should be disabled
    AND merchant status tm code should be PYM01
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is changed to disabled WHEN TM code is OTH and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=OTH    note=QA Web Automation Note.
    THEN merchant status should be disabled
    AND merchant status tm code should be OTH
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Merchant status is NOT changed to disabled WHEN TM code is OTH and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status is toggled    tm_code=OTH
    THEN merchant status disable modal should display the blank note error
    AND merchant status modal is closed
    AND merchant status should be enabled
    AND merchant status tm code should be hidden
    AND merchant status tm notes should be "${EMPTY}"

# Enable merchant
Merchant status is changed to enabled WHEN initial status is disabled and note is not empty
    [Setup]    merchant status is toggled    tm_code=M01
    GIVEN merchant status should be disabled
    WHEN merchant status is toggled    initial_status=disabled    note=QA Web Automation Note.
    THEN merchant status should be enabled
    AND merchant status tm code should be hidden
    AND merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated

Merchant status is changed to enabled WHEN initial status is disabled and note is empty
    [Setup]    merchant status is toggled    tm_code=M01
    GIVEN merchant status should be disabled
    WHEN merchant status is toggled    initial_status=disabled
    THEN merchant status should be enabled
    AND merchant status tm code should be hidden
    AND merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated

# Notes
Note is edited WHEN merchant status is enabled and note is not empty
    GIVEN merchant status should be enabled
    WHEN merchant status tm note is edited    QA Web Automation Note.
    THEN merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated

Note is edited WHEN merchant status is disabled and note is not empty
    [Setup]    merchant status is toggled    tm_code=M01
    GIVEN merchant status should be disabled
    WHEN merchant status tm note is edited    QA Web Automation Note.
    THEN merchant status tm notes should be "QA Web Automation Note."
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled

Note is edited WHEN merchant status is enabled and note is empty
    GIVEN merchant status should be enabled
    WHEN merchant status tm note is edited    ${EMPTY}
    THEN merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated

Note is edited WHEN merchant status is disabled and note is empty
    [Setup]    merchant status is toggled    tm_code=M01
    GIVEN merchant status should be disabled
    WHEN merchant status tm note is edited    ${EMPTY}
    THEN merchant status tm notes should be "${EMPTY}"
    AND merchant status last updated date should be updated
    [Teardown]    merchant status is toggled    initial_status=disabled