*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/keyword.robot


*** Variables ***
${siteurl}	https://practicetestautomation.com/practice-test-login/
${browser}	chrome
${user}		student
${pass}		password123

*** Test Cases ***
INvalid Scenario
	lauchbrowser	${siteurl}	${browser}
	input user    ${user}
	input pwd    ${pass}
	submitbtn
	errormsg



*** Keywords ***

