*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${URL}   https://front.serverest.dev/login
${cadastreseLink}  //a[@data-testid='cadastrar'][contains(.,'Cadastre-se')]
${nomeInput}           id=nome
${emailInput}          id=email
${senhaInput}          id=password
${selecionarPerfil}    id=administrador
${cadastrarButton}     //button[@data-testid='cadastrar'][contains(.,'Cadastrar')]




*** Keywords ***

Abrir o navegador
    Open Browser  browser=chrome
    Maximize Browser Window
    
Fechar o navegador
    Close Browser


Passo 1 - Acessar a página de login ServeRest
    Go to   url=${URL}
    

 Passo 2 - Clicar em cadastre-se
     Wait Until Element Is Visible    ${cadastreseLink} 
     Click Element    ${cadastreseLink} 
Passo 3 - Digitar um nome
    Wait Until Element Is Visible    ${nomeInput}   
    Input Text    ${nomeInput}       Maria da Silva Rocha
    sleep  2s
Passo 4 - Digitar um e-mail
    Wait Until Element Is Visible    ${emailInput} 
    Input Text    ${emailInput}     mariadasilva@gmail.com
    sleep  2s

 Passo 5 - Digitar uma senha
    Wait Until Element Is Visible    ${senhaInput}   
    Input Password    ${senhaInput}    $321
    sleep  2s
     
Passo 6 - Escolher perfil de usuário administrador
    Wait Until Element Is Visible    ${selecionarPerfil} 
    Select Checkbox    ${selecionarPerfil} 
    sleep  2s

Passo 7 - Clicar em cadastrar
    Wait Until Element Is Visible    ${cadastrarButton}  
    Click Button   ${cadastrarButton} 
    sleep  3s