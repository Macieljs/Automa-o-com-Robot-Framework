*** Settings ***
Resource         ../resources/main.robot
Resource    ../resources/pages/validar.robot
Test Setup    Abrir o site e entrar




*** Test Cases ***
Teste 1 
   
    E me registro
    Então cadastro
    Então valido
