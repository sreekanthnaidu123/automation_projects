*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}	https://demo.seleniumeasy.com/basic-radiobutton-demo.html
${browser}	Chrome



*** Test Cases ***
Radiobuttons
	open browser    ${url}	${browser}
	set selenium speed    2seconds
	maximize browser window
	click element    xpath://input[@value='Male']

	select radio button    gender	Male
	select radio button    gender	Female



*** Keywords ***
