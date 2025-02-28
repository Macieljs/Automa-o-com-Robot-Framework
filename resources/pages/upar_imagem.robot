*** Settings ***
Resource     ../main.robot


*** Variables ***
&{imagem}
...    imagem1= ${EXECDIR}${/}resources${/}shared${/}imagem${/}CIDADES-23.08-1-780x470.png


*** Keywords ***
Upar imagem

    Choose File    ${register.p_documents}  ${imagem.imagem1}