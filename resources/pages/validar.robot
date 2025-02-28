*** Settings ***
Resource     ../main.robot

*** Keywords ***
Então valido
    Wait Until Element Is Visible    ${register.button_register}