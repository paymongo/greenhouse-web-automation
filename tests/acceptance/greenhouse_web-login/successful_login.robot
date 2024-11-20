*** Settings ***
Resource    ../../resource_collection.robot
Suite Teardown    end browser instance

*** Test Cases ***
User should be able to login to the Greenhouse Web
    login to greenhouse web    ${TEST_EMAIL}    ${TEST_PASSWORD}