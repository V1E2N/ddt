*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}  https://demo.automationtesting.in/Register.html
${browser}  chrome


*** Test Cases ***
test
	Open Browser    ${url}      ${browser}
	Sleep    2
	Execute Javascript    window.scrollTo(0,200)
	Scroll Element Into View    //span[@role='combobox']
	Sleep    2
	Click Element    //span[@role='combobox']
	Sleep    2
	Click Element    //li[contains(text(),'India')]
	Sleep    3