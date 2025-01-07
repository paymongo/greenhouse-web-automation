# Locator elements for the Greenhouse Onboarding Page; xpath format is used.

*** Variables ***
${merchant_search_input}    xpath=//div[@class='form-item merchant-onboarding__search-form']//input

${merchant_status_container}    xpath=//div[@class='merchant-details']/div[contains(@class, 'merchant-status')]
${merchant_status_edit_btn}    xpath=${merchant_status_container}//button[contains(.//span, 'Edit')]
${merchant_status_toggle_btn}    xpath=${merchant_status_container}//button[contains(@class, 'toggle')]
${merchant_status_enabled_span}    xpath=${merchant_status_container}//span[contains(text(), 'Merchant enabled')]
${merchant_status_disabled_span}    xpath=${merchant_status_container}//span[contains(text(), 'Merchant disabled')]
${merchant_status_tm_notes_input}    xpath=//textarea[@name='terminatedCode.notes']
${merchant_status_tm_notes_update_btn}    xpath=//button[text()='Update']

${merchant_status_enable_modal_header}    xpath=//div[@class='ant-modal-content']//div[contains(text(), 'Are you sure you want to enable this merchant?')]
${merchant_status_disable_modal_header}    xpath=//div[@class='ant-modal-content']//div[contains(text(), 'Are you sure you want to disable this merchant?')]
${merchant_status_disable_modal_tm_btn}    xpath=//div[contains(@class, 'terminated-code-options')]//button

# Change this to a function!!!!!! select TM code
${merchant_status_tm_selector_option}    xpath=//ul//div[contains(text(),'M01 - Account Data Compromise')]