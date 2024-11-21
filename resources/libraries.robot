*** Settings ***
Library    generate_otp/generate_otp.py
Library    BuiltIn
Library    Collections
Library    CryptoLibrary    key_path=${CURDIR}/../resources/keys
Library    DatabaseLibrary
Library    DateTime
Library    JSONLibrary
Library    JSONSchemaLibrary    ../../../schemas
Library    OperatingSystem
Library    Process
Library    requests
Library    RequestsLibrary
Library    SeleniumLibrary    run_on_failure=Nothing
Library    String