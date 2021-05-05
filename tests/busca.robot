***Settings***

Library                 Browser

***Test Cases***
Cenario: Deve buscar um único restaurante
    Start Session
    Go To Restaurants
    Search By                       Debuger
    Restaurant Should Be visible    DEBUGER KING
    Restaurant Count Should Be      1
    Take Screenshot

Cenario: Deve buscar por categoria
    Start Session
    Go To Restaurants
    Search By                       Cafe
    Restaurant Should Be visible    STARBUGS COFFEE
    Take Screenshot

Cenario: Deve retornar todos os restaurantes
    Start Session
    Go To Restaurants
    Search By                       a
    Restaurant Count Should Be      5
    Take Screenshot

***Keywords***
Start Session
    New Browser                 chromium                true
    New Page                    https://parodifood.qaninja.academy
    #checkpoint
    Get Text                    span    contains        Nunca foi tão engraçado pedir comida
Go To Restaurants
    Click                       text=Estou com fome!
    Get Text                    h1 strong      contains        Ta na hora de matar a fome!

Search By
    [Arguments]                 ${value}
    Click                       css=.search-link
    Fill Text                   css=input[formcontrolname="searchControl"]      ${value}

Restaurant Should Be visible
    [Arguments]                 ${name}
    Wait For Elements State     css=div[class="place-info-box"][style="opacity: 1;"]     visible     10         
    Get Text                    css=.place-info-box         contains        ${name}

Restaurant Count Should Be
    [Arguments]                 ${qdt}
    Wait For Elements State     css=div[class="place-info-box"][style="opacity: 1;"]     visible     10         
    Get Element Count           css=.place-info-box     equal       ${qdt}