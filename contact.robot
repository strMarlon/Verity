* Settings * 
Documentation    Essa suíte testa o site da verity
Resource         home.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador 

* Test Cases *
Caso de teste 01
    [Documentation]    Esse teste verifica os titulos so site da Verity
    ...                "Culture e Tech" e "Nossas soluções"
    [Tags]             visita
    Acesse o site da Verity - verity.com.br
    Realize a validação dos títulos "Culture e Tech" e "Nossas soluções_"
Caso de teste 02
    [Documentation]    Clica no menu contato
    [Tags]             Click_no_menu    sessão_Vamos_conversar
    Acesse o site da Verity - verity.com.br
    Click no Menu “Contato”, sessão “Vamos Conversar”
    