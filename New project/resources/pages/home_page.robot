*** Settings ***
Resource     ../main.robot


*** Variables ***
&{home}
...    Enter=(//span)[1]


*** Keywords ***
Dado que entro no site
    Open Browser     ${geral.URL}     chrome
E clico para iniciar
    
    Click Element    ${home.Enter}
