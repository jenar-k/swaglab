*** Settings ***
Library             SeleniumLibrary
Suite Setup         Open Browser                ${webURL}               ${BROWSERS}
Suite Teardown      Close Browser
Test Template       I login with invalid username and invalid password

*** Variables ***
${webURL}           https://www.saucedemo.com/               
${BROWSERS}         Chrome

*** Keywords ***
I login with invalid username and invalid password
    Maximize Browser Window
    [Arguments]                 ${username}                                 ${password}
    Input Text                  //input[@data-test="username"]              ${username} 
    Input Text                  //input[@id="password"]                     ${password}
    Click Element               id=login-button
    Page Should Contain                                                     Epic sadface: Username and password do not match any user in this service

*** Test Cases ***
Login with invalid username user A             userA                   passwordA
Login with invalid username user B             userB                   passwordB
Login with invalid username user C             userC                   passwordC


# I login with valid username and valid password
#     Maximize Browser Window
#     Input Text                  //input[@data-test="username"]              standard_user
#     Input Text                  //input[@id="password"]                     secret_sauce  
#     Click Element               //input[@id="login-button"]
#     Page Should Contain                                                     Products
#     Sleep                       2s