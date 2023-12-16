*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://demo.automationtesting.in/Register.html
${browser}  chrome

*** Keywords ***
Open my browser
	Open Browser    ${url}  ${browser}
close my browser
	Close All Browsers
Input username
	[Arguments]    ${username}
	Input Text    //input[@ng-model="FirstName"]    ${username}

Input Password
	[Arguments]    ${password}
	Input Text    //input[@ng-model="LastName"]     ${password}

Input address
	[Arguments]    ${adress}
	Input Text  //textarea[@ng-model="Adress"]  ${adress}
Input Email
	[Arguments]    ${email}
	Input Text    //input[@ng-model="EmailAdress"]  ${email}
Input Phone
	Input Text   //input[@ng-model="Phone"]
Gender Option
	Input Text    //input[@value="Male"]
page display
	Page Should Contain    Please include an @ in email address
