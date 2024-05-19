*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
for loop
	@{list}		create list    1 2 3 4 5
	FOR   ${i}	IN	@{list}
		log to console    ${i}
		exit for loop if	${i} == 4
	END










