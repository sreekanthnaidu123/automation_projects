*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot
*** Variables ***
${url}	https://www.facebook.com/login.php
${browser}	chrome

*** Test Cases ***
userkeywords
	${Browserlocation}=		launchbrowser	${url}	${browser}
	log to console    ${Browserlocation}
	input text    name:email	sreekanth
	input text    name:pass		sree
	sleep 	3





