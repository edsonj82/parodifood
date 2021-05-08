# Lab de Robot Framework - Parodifood (QA Ninja)

<br>

 Curso realizado para estimular e explorar os conhecimentos do framework Robot Framework para o uso de testadores em projetos com automação de testes dentro de uma aplicação chamada 'Parodifood' (desenvolvido pela QA Ninja) aplicando cenários com regras de negócio usado na vida real. 

 O Robot Framework propõe automação de uma forma prática no qual você pode automatizar sites, webapps, APIs, desktop, mobile tudo num único framework.
 Ele não exige conhecimento específico em linguagem de programação, pois o objetivo dele é tornar os testes mais reaproveitáveis onde QAs e tester podem automatizar sem ser muito técnico.


#### Este exemplo foi desenvolvido para estudos durante o mês de Maio de 2021.

<br>

## Tecnologias utilizadas:

<br>

Tecnologias | Propósito
------------ | -------------
GitHub | plataforma de hospedagem de código-fonte com controle de versão usando o Git
Python | linguagem de programação de alto nível, interpretada, de script, imperativa, orientada a objetos, funcional, de tipagem dinâmica e forte
Robot Framework | estrutura genérica de automação de teste para testes de aceitação e desenvolvimento orientado a testes de aceitação  
ZSH | interpretador de comando para shell scripting cuja finalidade é facilitar o uso da ferramenta em si
Browser | biblioteca aplicada no Robot Framework para automação 
<br>

## Passos de Configuração no Linux:

1 - Instalar Chrome no Linux:

* https://support.google.com/chrome/a/answer/9025903?hl=pt-BR

2 - Trocando o shell BASH por ZSH via WGET(opcional):

* $ sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

3 - Configurando o ZSH:

* Terminal > Preferences > Profiles > New Profiles<br>

* Em "Command" selecionar a opção "Run a custom command instead of my shell<br>
* Em "Custom Command" digite "zsh" e fechar<br>
* Retorna ao terminal em preferências e selecione o profile criado como padrão<br>


4 - Instalar e configurar o Python3 + PIP3:

* python3: $ sudo apt-get install python3<br>
* pip: $ sudo apt-get install python3-pip<br>


5 - Escolher uma IDE de uso para automatizar seus testes. Ex: VSCode

6 - Instalar o Robot Framework:

* pip3 install robotframework

<br>

## Fontes:
[Node](https://nodejs.org/en/)
[ZSH](https://ohmyz.sh)
[Python](https://www.python.org/)
[VSCODE](https://code.visualstudio.com)
[RobotFramework](https://robotframework.org/)
[Browser](https://robotframework-browser.org/)
[QA Ninja](https://qaninja.academy/)