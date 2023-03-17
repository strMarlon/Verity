# Projeto Testes web com Robot Framework

## O que é o Robot Framework?

O Robot Framework é uma estrutura de automação de teste genérica de código aberto, que permite escrever testes automatizados 
para vários tipos de aplicativos e sistemas. Ele fornece uma sintaxe fácil de usar, com uma linguagem de domínio específico (DSL) 
que permite criar casos de teste de forma mais rápida e eficiente.

## Estrutura do código.

A estrutura do script é simples e pode ser dividida em 4 seções:

### *** Settings ***
Aqui é onde você configura as bibliotecas que serão utilizadas, caminhos para arquivos auxiliares (page objects por exemplo), contextos e hooks.

### *** Variables ***
Lista das variáveis a serem usadas (de preferência com descrição) e definição dos valores de algumas dessas variáveis.

### *** Test Cases ***
Esta é a seção mais importante, pois sem ela seu teste não roda. É aqui que ficam os cenários/casos de teste, com ou sem implementação.

### *** Keywords ***
Aqui você pode definir palavras chave ou implementar os cenários de teste descritos acima.
Todas as seções acima são opcionais, dependendo de como seu código foi escrito, exceto a *** Test Cases ***. Aconselho a usá-las sempre 
para uma melhor organização do código.
Os rótulos abaixo não são obrigatórios, mas também ajudam na organização.

### [Documentation]
Esta palavra chave precede a descrição da funcionalidade ou do cenário de teste. Tenha a atenção que, se a documentação é feita na seção *** Setings ***, 
ela não deve estar entre colchetes. Os colchetes só são usados dentro dos *** Test Cases ***

### [Tags]
Um rótulo mais simples para o cenário, caso queira ou precise rodar somente um ou poucos casos. É possível fazer isso chamando pelo título dos cenários na linha
de comando mas, como geralmente eles são grandes, as tags são uma melhor opção em geral.

## Instalação

<p>O pré requisito é ter o Python 3.11.2 instalado na máquina. </p>
<p>Após instalar o Python, verifique se o Pip, gerenciador de pacotes do Python também está instalado.</p> 
<p>Ele deve vir instalado por padrão. Digite os comandos abaixo:</p>
<pre>
   $ python --version
   Python 3.11.2 
   $ pip --version
   pip 23.0.1 from C:\Python311\Lib\site-packages\pip (python 3.11)
</pre>  
<p>Em seguida, faça a instalação passo a passo, siguindo as instruções abaixo.</p>
<pre>
   $ pip install robot-framework
</pre>  
<p>Espere completar a instalação e verifique se tudo ocorreu bem com o comando.</p>
<pre>
   $ robot  --version   
   Robot Framework 6.0.2 (Python 3.11.2 on win32)
</pre>
<p>Usuários de Windows devem executar o Robot no cmd. Em outros terminais do Windows, como o Git Bash.</p>
<p>O método de instalação recomendado para a biblioteca do Selenium.</p>
<pre>
  $ pip install --upgrade robotframework-seleniumlibrary
</pre> 

<p>Segue em anexo o site do Robot Framework: https://robotframework.org</p>
    
<p>O upgrade é necessário para instalar a biblioteca mais nova, pois a antiga gera erros de compilação.</p>
<p>Rode os comandos abaixo e veja se a saída contém os elementos.</p>
<pre>
  $ pip list                              23.0.1
  -----------------------------------------------------------
  robotframework                  6.0.2
  robotframework-requests         0.9.4
  robotframework-selenium2library 3.0.0
  robotframework-seleniumlibrary  6.1.0.dev1
</pre>
<h2>Webdrivers</h2>
<p>Depois das nossas linguagens instaladas, precisamos baixar os drivers que controlarão os browsers utilizados. No site do Selenium você encontra esses drivers.</p> 
<p>Os drivers, após baixados, deverão ser descompactados e colocados na pasta Python311\Scripts\. Funciona também se colocar na pasta do seu projeto, mas isso não é </p>
<p>recomendado pois você teria que replicar o driver para cada projeto.</p>
<p>É possível, no Windows, você colocar em qualquer outra pasta, por exemplo C:\webdrivers (é onde eu coloco) e adicionar essa pasta ao path. Tecle “window+s”,</p>
<p>digite “path”, clique em “Editar variáveis de sistema” > “Variáveis de Ambiente” > “Path”, e adicione o caminho onde estão seus webdrivers.</p>
<p>No Linux e Mac, eu coloco direto na pasta</p> 
<pre>
  /usr/local/bin/.
</pre>
<h3>Agora, tudo está pronto!</h3>
<h4>Executando pelo Terminal</h4>
<p>Navegue até a pasta em que voceê baixou ou clonou os arquivos e use os comandos.</p>
<pre>
  $ robot "nome_do_arquivo.robot"
</pre>
<p>Este comando irá executar o arquivo de teste especificado e exibir o resultado no console.M</p>
<p>Além disso, existem alguns argumentos opcionais que você pode usar para personalizar a execução do teste, como:</p>
<pre>
  -d <diretório>: define o diretório onde os resultados serão salvos
  -v <variável>: define uma variável que pode ser usada no arquivo de teste
  -i <tag>: executa apenas os testes que possuem a tag especificada
  -e <tag>: ignora os testes que possuem a tag especificada
  -n <nome>: define um nome personalizado para o conjunto de testes
  -t <nome_do_teste>: executa apenas o teste com o nome especificado
 </pre>
<h3>Relatórios</h3>
<p>Os resultados dos testes são exibidos na tela no terminal.</p>
<p>Além disso, gera um relatório .html a cada execução, esse relatório e gerado na pasta do projeto.</p>

