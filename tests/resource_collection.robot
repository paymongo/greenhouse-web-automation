# Note: For api automation only.
# For front-end automation necessary imports should be placed in test case files

*** Settings ***

# Libraries
Resource    ../resources/libraries.robot

# Environment Variables
Resource    ../environment_variables.robot

# Utilities
Resource    ../resources/keywords/utilities/common.robot

# Assertions
Resource    ../resources/keywords/assertions/merchantsPage.robot

# Page Actions
Resource    ../resources/keywords/page_actions/loginPageActions.robot

# Page Objects
Resource    ../resources/keywords/page_objects/loginPageObjects.robot