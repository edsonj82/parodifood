#ARquivo de Configuração
***Settings***

Documentation           Arquivo base do projeto

Library                 Browser
Library                 OperatingSystem

Resource                actions/search.robot
Resource                actions/cart.robot
Resource                actions/order.robot

***Variables***
${DEFAULT_TIMEOUT}      10

***Keywords***
Start Session
    New Browser                 ${browser}                ${headless}
    New Page                    https://parodifood.qaninja.academy
    Set Viewport Size           1920    1080
    #checkpoint
    Get Text                    span    contains        Nunca foi tão engraçado pedir comida

###Helpers
Get Json
    [Arguments]         ${file_name}
    ${file}             Get File            ${EXECDIR}/resources/fixtures/${file_name}
    ${super_var}        Evaluate            json.loads($file)       json
    [return]            ${super_var}