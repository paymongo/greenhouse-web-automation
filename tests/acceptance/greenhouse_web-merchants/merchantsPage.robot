*** Settings ***
Resource    ../../resource_collection.robot
Resource    ../../../resources/keywords/page_actions/loginPageActions.robot
Suite Setup    login to greenhouse web
Suite Teardown    end browser instance

*** Test Cases ***
User is on the merchants page
    GIVEN user should be in greenhouse merchants page
    # Add test keywords here