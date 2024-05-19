*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
capture
	open browser    https://www.redbus.in/travels/ovr-travels	Chrome
	maximize browser window
	capture element screenshot    xpath://i[@class='icon icon-redBus_Logo D121_logo_main']	C:/Users/ADMIN/PycharmProjects/robot_project/logo.png
	capture page screenshot		C:/Users/ADMIN/PycharmProjects/robot_project/page.png