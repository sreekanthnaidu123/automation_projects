*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}	Chrome
${url}	https://chercher.tech/practice/frames

*** Test Cases ***
windows
	open browser	https://chercher.tech/practice/frames	Chrome
	maximize browser window
	${url}=		get location
	log to console    ${url}
	sleep	3seconds


	go to    https://www.youtube.com/watch?v=5tVgC-oQVKs
	maximize browser window
	${url}=		get location
	log to console    ${url}
	sleep	3seconds

	go back
	maximize browser window
	${url}=		get location
	log to console    ${url}
	sleep	3seconds








	close all browsers





*** Keywords ***
