*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${login_url}    https://www.google.com/

*** Keywords ***
Open my browser
	Open Browser    ${login_url}    ${browser}
	Maximize Browser Window
close browsers
	Close All Browsers



Input username
	[Arguments]     ${username}
	Input Text    id:user-name  ${username}

Input Password
	[Arguments]    ${password}
	Input Text    id:password   ${password}

click login button
	Click Element    id:login-button

click nav buton
	Click Element       xpath://button[@id="react-burger-menu-btn"]

cllick logout button
	Click Element    xpath://button[@id="logout_sidebar_link"]

Error message should visible
	Page Should Contain   Epic sadface: Username and password do not match any user in this service
Error message should visible1
	Page Should Contain   Epic sadface: Password is required
Login sucessfull wag Labs
	Page Should Contain    Swag Labs

