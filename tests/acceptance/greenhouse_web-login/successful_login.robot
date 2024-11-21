*** Settings ***
Resource    ../../resource_collection.robot
Suite Teardown    end browser instance

*** Test Cases ***
User should be able to login to the Greenhouse Web
    WHEN login to greenhouse web
    THEN user should be in greenhouse merchants page