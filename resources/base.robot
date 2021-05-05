#ARquivo de Configuração
***Settings***

Documentation           Arquivo base do projeto

Library                 Browser
Resource                actions/search.robot

***Keywords***
Start Session
    New Browser                 chromium                true
    New Page                    https://parodifood.qaninja.academy
    #checkpoint
    Get Text                    span    contains        Nunca foi tão engraçado pedir comida