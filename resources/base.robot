#ARquivo de Configuração
***Settings***

Documentation           Arquivo base do projeto

Library                 Browser
Library                 OperatingSystem

Resource                actions/search.robot

***Keywords***
Start Session
    New Browser                 chromium                false
    New Page                    https://parodifood.qaninja.academy
    #checkpoint
    Get Text                    span    contains        Nunca foi tão engraçado pedir comida

###Helpers
Get Json
    [Arguments]         ${file_name}
    ${file}             Get File            ${EXECDIR}/resources/fixtures/${file_name}
    ${super_var}        Evaluate            json.loads($file)       json
    [return]            ${super_var}