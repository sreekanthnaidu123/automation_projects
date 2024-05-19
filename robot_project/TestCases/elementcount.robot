*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
elements count:
	open browser    https://www.facebook.com/	chrome
	maximize browser window

	${elementcount}=	get element count    xpath://a
	log to console    ${elementcount}

	FOR    ${i}		IN RANGE   1	${elementcount}
		log to console    ${i}
		${storelinks}=	get text    xpath:(//a)
		[${i}]
		log to console	${storelinks}
	END

	sleep    3
