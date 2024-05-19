*** Settings ***

Library    SeleniumLibrary
Resource    ../Resources/loginresource.robot
Library    DataDriver	../Testdata/logindata.csv
Suite Setup		launch browser
Suite Teardown    closebrowser
Test Template    INvalid Scenario

*** Variables ***

*** Test Cases ***
Testcase with ${username}	${password}






*** Keywords ***
INvalid Scenario
	[Arguments]    ${username}	${password}
	input user	${username}
	input pwd    ${password}
	submit button
	errormessage
