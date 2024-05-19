*** Settings ***
Library    SeleniumLibrary
Resource    ../REsources/loginresource.robot
Suite Setup    launch browser
Suite Teardown    closebrowser
Test Template    INvalid Scenario


*** Variables ***
*** Test Cases ***
TC1
	    student		password

*** Keywords ***
INvalid Scenario
	[Arguments]    ${user}	${pass}
	input user		${user}
	input pwd	${pass}
	submit button
	errormessage


