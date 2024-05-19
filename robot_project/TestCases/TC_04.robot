*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}	https://chercher.tech/practice/practice-dropdowns-selenium-webdriver
${browser}	Chrome
*** Test Cases ***
DROPDOWNS
	${speed}=	get selenium speed
	log to console    ${speed}
	open browser	${url}	${browser}
	${presenturl}=		get location
	log to console    ${presenturl}
	maximize browser window
	#set selenium speed    1seconds
	select from list by label    first	Google
	select from list by index	first	3
	set selenium speed    2seconds
	select from list by label    animals	Baby Cat
	select from list by index	 animals	2
	select from list by value    animals	avatar
	${speed1}=	get selenium speed
	log to console    ${speed1}



*** Keywords ***
