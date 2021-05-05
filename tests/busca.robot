***Settings***

Library                 Browser

***Test Cases***
Cenario: Deve buscar um único restaurante
    Start Session
    Go To Restaurants
    Search By           Debuger

    Wait For Elements State     css=div[class="place-info-box"][style="opacity: 1;"]     visible     10         
    Get Text            css=.place-info-box         contains        DEBUGER KING
    # think time
    Get Element Count       css=.place-info-box     equal       1
    Take Screenshot

Cenario: Deve buscar por categoria
    Start Session
    Go To Restaurants

    Search By           Cafe


    Wait For Elements State     css=div[class="place-info-box"][style="opacity: 1;"]     visible     10         
    Get Text            css=.place-info-box         contains        STARBUGS COFFEE
    Take Screenshot

Cenario: Deve retornar todos os restaurantes
    Start Session
    Go To Restaurants

    Search By           a

    Wait For Elements State     css=div[class="place-info-box"][style="opacity: 1;"]     visible     10         
    Get Element Count       css=.place-info-box     equal       5
    # think time
    Take Screenshot

***Keywords***
Start Session
    New Browser         chromium                true
    New Page            https://parodifood.qaninja.academy
    #checkpoint
    Get Text            span    contains        Nunca foi tão engraçado pedir comida
Go To Restaurants
    Click               text=Estou com fome!
    Get Text            h1 strong      contains        Ta na hora de matar a fome!

Search By
    [Arguments]         ${value}
    Click               css=.search-link
    Fill Text           css=input[formcontrolname="searchControl"]      ${value}