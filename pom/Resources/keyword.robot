*** Settings ***
Library    SeleniumLibrary
Variables  ../Locators/locators.py
*** Variables ***

*** Keywords ***
lauchbrowser
	[Arguments]		${siteurl}	${browser}
	open browser	${siteurl}	${browser}
	maximize browser window
input user
	[Arguments]    ${username}
	input text    ${username_loc}	${username}
input pwd
	[Arguments]    ${password}
	input text    ${password_loc}	${password}
submitbtn
	click button	${button}
errormsg
	page should contain    Your password is invalid!
successmsg
	page should contain link    BLOG
