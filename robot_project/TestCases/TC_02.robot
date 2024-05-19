*** Settings ***
Library		SeleniumLibrary
*** Variables ***
${browser}	chrome
${url}	https://demo.nopcommerce.com/
*** Test Cases ***
LoginTest
	open browser    ${url}	${browser}
	maximize browser window
	click link    xpath://a[@class='ico-login']

	${"email_txt"}	set variable    xpath://input[@class='email']
	element should be visible    ${"email_txt"}
	element should be enabled    ${"email_txt"}
	title should be    nopCommerce demo store. Login
	input text    ${"email_txt"}	sree@kanth042@gmai.com
	input text    id:Password	sree@123
	clear element text    id:Password
	click element    id:RememberMe
	click button    xpath://button[@type='submit']
	handle alert    accept

	sleep    5
	close browser


*** Keywords ***

