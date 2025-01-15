# Locator elements for the Greenhouse Onboarding Page; xpath format is used.

*** Variables ***
${onboarding_search_input}    xpath=//div[@class='form-item merchant-onboarding__search-form']//input

${merchant_acct_summary_id}    xpath=//div[text()='Merchant ID']/following-sibling::div

${merchant_status_container}    xpath=//div[@class='merchant-details']/div[contains(@class, 'merchant-status')]
${merchant_status_edit_btn}    ${merchant_status_container}//button[contains(.//span, 'Edit')]
${merchant_status_update_btn}    ${merchant_status_container}//button[text()='Update']
${merchant_status_toggle_btn}    ${merchant_status_container}//button[contains(@class, 'toggle')]
${merchant_status_span}    ${merchant_status_container}//span[contains(text(), 'Merchant')]
${merchant_status_tm_code}    ${merchant_status_container}//div//span[contains(@class, 'terminated-code-reason')]/parent::div/following-sibling::span
${merchant_status_notes}    ${merchant_status_container}//div/span[text()='Notes']/following-sibling::span
${merchant_status_updated_at_span}    xpath=//span[contains(@class, 'merchant-status__last-updated-at')]

${merchant_status_modal_header}    xpath=//div[@class='ant-modal-content']//div[contains(text(), 'Are you sure you want to')]
${merchant_status_tm_selector_btn}    xpath=//div[contains(@class, 'terminated-code-options')]//button
${merchant_status_tm_selector_input}    xpath=//div[contains(@class, 'terminated-code-options')]//button//input
${merchant_status_tm_notes_txtarea}    xpath=//textarea[@name='terminatedCode.notes']
${merchant_status_tm_notes_oth_error}    xpath=//p[text()='Note cannot be blank when selected TM code is OTH.']
${merchant_status_modal_disable_btn}    xpath=//button[text()='Disable']
${merchant_status_modal_enable_btn}    xpath=//button[text()='Enable']
${merchant_status_modal_close_btn}    xpath=//span[contains(@class, 'close')]