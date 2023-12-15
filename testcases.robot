*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resource_login.robot
Suite Setup    Open My Browser
Suite Teardown    Close Browsers
Test Template    Invalid Login


*** Test Cases ***           username       password
Right user empty password   problem_user    ${EMPTY}

Right user wrong password   standard_user   jsfkj
wrong user Right password   gkdjjjkjk       seceret_sauece
wrong user empty password   kjkjkj          ${EMPTY}
wrong user wrong password   k;wfjk;j          577878




*** Keywords ***
Invalid Login
    [Arguments]    ${username}  ${password}
    Input Username  ${username}
    Input Password    ${password}
    Click Login Button
    Error Message Should Visible





