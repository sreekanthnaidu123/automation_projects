*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Url}	https://practicetestautomation.com/practice-test-login/
${browser}	Chrome
*** Keywords ***
launch browser
	open browser	${Url}	${browser}
	maximize browser window
closebrowser
	close all browsers
input user
	[Arguments]		${username}
	input text    id:username	${username}
input pwd
	[Arguments]    ${password}
	input text    id:password	${password}
submit button
	click button    id:submit
errormessage
	page should contain    Your password is invalid!
succesful message
	page should contain    Logged in successful