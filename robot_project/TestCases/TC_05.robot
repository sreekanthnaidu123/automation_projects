*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}	https://chercher.tech/practice/practice-pop-ups-selenium-webdriver
${browser}	Chrome
*** Test Cases ***
alerts
	open browser	${url}	${browser}
	maximize browser window
	set selenium speed    3
	click element    xpath://input[@name='alert']
	handle alert    accept
	click element    xpath://input[@name='confirmation']
	handle alert    dismiss




*** Keywords ***
