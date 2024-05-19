*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Keywords ***
*** Test Cases ***
TC01
	${num}		set variable	10
	run keyword if    ${num} > 5
	...		log  ${num}


