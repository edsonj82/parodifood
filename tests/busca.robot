***Settings***

Library                 Browser

***Test Cases***
Buscar um restaurante
    New Browser         chromium                true
    New Page            https://parodifood.qaninja.academy
    #checkpoint
    Get Text            span    contains        Nunca foi tão engraçado pedir comida
    Click               text=Estou com fome!
    Get Text            h1 strong      contains        Ta na hora de matar a fome!

    Click               css=.search-link
    Fill Text           css=input[formcontrolname="searchControl"]      Debuger

    Wait For Elements State     css=div[class="place-info-box"][style="opacity: 1;"]     visible     10         
    Get Text            css=.place-info-box         contains        DEBUGER KING
    # think time
    Take Screenshot