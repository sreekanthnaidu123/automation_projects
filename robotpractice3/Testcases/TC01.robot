*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}	https://testautomationpractice.blogspot.com/
${browser}	chrome
${browser1}        Chrome
${url1}            http://jqueryui.com/slider/
*** Test Cases ***
TC01
	UPTO ADDRESS
	UPTOCHECKBOX
	UPTO SLIDE

	${val}	get text    xpath://div[@class='widget HTML']/div/table/tbody/tr[3]/td[3]
	log to console    ${val}
	${val1}		set variable    15

	RUN KEYWORD IF    ${val1} >100	log to console    hii
	log to console    hlo

	#table cell should contain    	xpath://div[@class='widget HTML']/div/table/tbody/tr[3]/td[3]	3	2 	Java
	select frame    	id:frame-one796456169


	input text    xpath://input[@name='RESULT_TextField-0']	sreekanth
#	select radio button    RESULT_RadioB/utton-1		Radio-0
	select radio button   	 group		male
	#click element    id:RESULT_RadioButton-1_0
	#sleep		5

	#click element    xpath://input[@type='radio']
	input text    id:RESULT_TextField-2		05/16/2024
	select from list by label    id:RESULT_RadioButton-3		Developer
	sleep    5



*** Keywords ***
UPTO ADDRESS
	open browser    ${url}		${browser}
	maximize browser window
	input text    id:name	sreekanth
	input text    id:email	mellamputisreekanth042@gmail.com
	input text    id:phone	805604092
	input text    id:textarea	something is fishy
	${val}	GET TEXT    id:textarea
	log to console    ${val}
UPTOCHECKBOX
	execute javascript    window.scrollBy(0,500)
	select radio button    gender		male
	select checkbox    id:monday
	select checkbox    id:sunday
	select checkbox    id:tuesday
	unselect checkbox    id:sunday
UPTO SLIDE
	select from list by label    id:country		United Kingdom
	select from list by label    id:colors		Green
	input text    id:datepicker		15/17/2024
	input text    id:Wikipedia1_wikipedia-search-input		google
	#click element    //input[@class='wikipedia-search-button']


	#click element			//*[@id="wikipedia-search-result-link"]/a

	${links}	get count		//*[@id="Wikipedia1"]/div[1]/a	id:Wikipedia1_wikipedia-search-results
	log to console    ${links}
	#click button    //div[@class='widget-content']//button



	click element    //*[@id="HTML9"]/div[1]/button[1]
	handle alert    accept

	double click element    id:field1
	input text    id:field2	FIELD2
	double click element    xpath://div[@id='HTML10']/div/button[1]
	drag and drop    xpath://div[@id='draggable']/p		xpath://div[@id='droppable']

Scroll Slider
    [Arguments]    ${slider}    ${x_offset}    ${y_offset}

    Scroll Slider    ${slider}    ${x_offset}    ${y_offset}





