*** Settings ***
Resource     ../main.robot
Resource    upar_imagem.robot

Library    Process

*** Variables ***
&{register}
...    inputnomecompleto=//input[@name="name"]
...    inputEmail=//input[@name="email"]
...    inputCPF=//input[@name="cpf"]
...    inputCEP=//input[@name="cep"]
...    inputBuscar=//input[@type="button"]
...    inputRUA=//input[@name="addressStreet"]
...    inputNUMERO=//input[@name="addressNumber"]
...    inputBAIRRO=//input[@name="addressDistrict"]
...    inputCIDADE=//input[@name="addressCityUf"]
...    imgatividade1=//img[@src="/static/media/care.da95fc40d07de684ba44.png"]
...    imgatividade2=//img[@src="/static/media/train.76340ac43fd11b8a312f.png"]
...    p_documents=//input[@type="file"]
...    button_register=//button[@class="button-register"]
 


*** Keywords ***
E me registro
    Input Text    ${register.inputnomecompleto}   ${registro.Nomecompleto} 
    Press Key       ${register.inputnomecompleto}   \\13
    Input Text    ${register.inputEmail}    ${registro.Email}
    Input Text    ${register.inputCPF}    ${registro.CPF}
    Input Text    ${register.inputCEP}    ${registro.CEP}
    Click Button   ${register.inputBuscar}
    Wait Until Element Is Enabled      ${register.inputBuscar}
    Input Text    ${register.inputNUMERO}   100
    Click Element     ${register.imgatividade1}
    Wait Until Element Is Enabled   ${register.imgatividade1}
    Click Element     ${register.imgatividade2}
    Wait Until Element Is Enabled   ${register.imgatividade2}
    Upar imagem
    Wait Until Element Is Visible    ${register.button_register}
Então cadastro
    Click Button    ${register.button_register}

    
