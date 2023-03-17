* Settings * 
Library    SeleniumLibrary
* Variables * 
${URL}                      https://www.verity.com.br/
${NOSSAS_SOLUCOES}          //span[contains(.,'Nossas soluções_')]
${COLUNA}                   (//span[contains(.,'_')])[14]
${NOSSOS_CLIENTES}          (//span[contains(.,'Nossos clientes')])[2]
${COLUNA2}                  (//span[contains(.,'_')])[16]
${BOTAO}                    //p[@class='foFAdY'][contains(.,'CONTATO')]
${VAMOS_CONVERSAR}          //*[@id="comp-kwz6tqa9"]/h1/span/span[1]
${FORMULARIO_NOME}          //input[@maxlength='100']
${NOME}                     Marlon Amorim da Mata
${FORMULARIO_EMAIL}         //input[@name='email'][contains(@id,'comp-kwz6tqf7')]
${EMAIL}                    sddamata368@gmail.com
${FORMULARIO_TELEFONE}      //input[@name='phone'][contains(@id,'comp-kwz6tqfe')]
${TELEFONE}                 61998546751
${FORMULARIO_TEXTO}         //textarea[contains(@class,'rEindN has-custom-focus wixui-text-box__input')]
${CHECK_ACEIT}              //label[@data-testid='checkbox'][contains(.,'Aceito receber mensagens da Verity')]
${DISSERTACAO}              Farei parte da Verity!
${BOTAO_ENVIAR}             //button[@aria-disabled='false'][contains(.,'Enviar')]

* Keywords *
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador 
    Capture Page Screenshot
    Close Browser

Acesse o site da Verity - verity.com.br
    Go To    url=${URL}

Realize a validação dos títulos "Nossos Clientes_" e "Nossas soluções_" 
    Wait Until Element Is Visible    locator=${NOSSAS_SOLUCOES}
    Wait Until Element Is Visible    locator=${COLUNA}
    Wait Until Element Is Visible    locator=${NOSSOS_CLIENTES}
    Wait Until Element Is Visible    xpath=${COLUNA_2}

Click no Menu “Contato”, sessão “Vamos Conversar” e Preencha nesta tela os seguintes campos 
    Click Element                                         xpath=${BOTAO}
    Wait Until Element Is Visible                         xpath=${VAMOS_CONVERSAR}
    Input Text        xpath=${FORMULARIO_NOME}            text=${NOME}
    Input Text        locator=${FORMULARIO_EMAIL}         text=${EMAIL}
    Input Text        locator=${FORMULARIO_TELEFONE}      text=${TELEFONE}
    Input Text        locator=${FORMULARIO_TEXTO}         text=${DISSERTACAO}
    Click Element     locator=${CHECK_ACEIT}    
    Click Element     locator=${BOTAO_ENVIAR}
    
