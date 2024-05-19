*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}	https://sekharautomation.netlify.app/
${browser}	Chrome

*** Test Cases ***
LoginTest
    open browser    ${url}   ${browser}
    input text    id:name   sreekanth
    input text    id:Surname    mellamputi
    input text    id:sem    4th
    input text    id:mobile    805604092
    input text    id:email	 thmelamputi
*** Keywords ***
