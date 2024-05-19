*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
WEBTABLE
	open browser	https://cosmocode.io/automation-practice-webtable/	chrome
	maximize browser window

	${rows}=	get element count    xpath://table[@id='countries']/tbody/tr
	${cols}=	get element count    xpath://table[@id='countries']/tbody/tr[1]/td

	log to console		${rows}
	log to console		${cols}
	${data}=	get text	xpath://table[@id='countries']/tbody/tr[1]/td[4]
	log to console    ${data}
	table column should contain		xpath://table[@id='countries']	3 	Algiers
	table row should contain	xpath://table[@id='countries']	4	Algiers

#//*[@id="countries"]/tbody/tr[2]/td[1]
