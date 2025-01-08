*** Settings ***
Resource    ../page_objects/onboardingPageObjects.robot
Resource    ../utilities/onboardingPage.robot

*** Keywords ***
merchant ${merchant_id} is entered on the search bar
    input text    ${onboarding_search_input}    ${merchant_id}
    press keys    ${onboarding_search_input}    ENTER

merchant status is toggled
    [Arguments]    ${initial_status}=enabled    ${tm_code}=${EMPTY}    ${note}=${EMPTY}
    click element    ${merchant_status_toggle_btn}
    wait until element is visible    ${merchant_status_modal_header}
    input text    ${merchant_status_tm_notes_txtarea}    ${note}
    IF    "${initial_status}" == "enabled"
        IF    "${tm_code}" != "${EMPTY}"
            click element    ${merchant_status_tm_selector_btn}
            input text    ${merchant_status_tm_selector_input}    ${tm_code}
            ${tm_code_xpath}=    get xpath for tm code option    ${tm_code}
            click element    ${tm_code_xpath}
        END
        click element    ${merchant_status_modal_disable_btn}
    ELSE
        click element    ${merchant_status_modal_enable_btn}
    END

merchant status modal is closed
    click element    ${merchant_status_modal_close_btn}

merchant status tm note is edited
    [Arguments]    ${note}=${EMPTY}
    click element    ${merchant_status_edit_btn}
    wait until element is visible    ${merchant_status_tm_notes_txtarea}
    input text    ${merchant_status_tm_notes_txtarea}    ${note}
    click element    ${merchant_status_update_btn}