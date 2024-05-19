
*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
launchbrowser
	[Arguments]		${appurl}	${appbrowser}
	open browser    ${appurl}	${appbrowser}
	maximize browser window
	${currenturl}=	get location
	[Return]    ${currenturl}