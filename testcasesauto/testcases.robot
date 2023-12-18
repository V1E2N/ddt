*** Settings ***
Library    SeleniumLibrary
Resource    ../main/Automatic.robot
Suite Setup     Open my browser
Suite Teardown    Close My Browser
Test Template   Login Flows


*** Test Cases ***    username      password    address     email           phone
Tc1 - Enter data       kumar        123456      madurai      hhgmail.com    86445454


*** Keywords ***
Login flows
	[Arguments]    ${username}  ${password}  ${adress}  ${email}    ${phone}
	Open My Browser
	Input Username      ${username}
	Input Password    ${password}
	Input Address    ${adress}
	Input Email    ${email}
	Input Phone    ${phone}
	Gender Option
	Login button
	Page Display
