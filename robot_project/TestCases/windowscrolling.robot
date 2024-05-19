*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
WindowScroll
	open browser    https://in.search.yahoo.com/search?fr=mcafee&type=E210IN826G0&p=face	Chrome
	maximize browser window

	#scroll element into view    xpath://a[@class='fz-20 lh-26 td-hu tc va-bot d-ib mxw-100p']
	#execute javascript    window.scrollTo(0,2500)
	execute javascript    window.scrollTo(0,document.body.scrollHeight)
	sleep	3
