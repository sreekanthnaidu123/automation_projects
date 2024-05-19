*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
TC1
	[Tags]    sanity
	log to console    tis is sanity testing
Tc2
	[Tags]    regression
	log to console    this is regression testing
Tc3
	[Tags]    sanity
	log to console    This is sanity2
Tc4
	[Tags]    regression
	log to console    THis is regression2

*** Keywords ***
