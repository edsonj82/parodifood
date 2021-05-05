***Settings***
Documentation       Ações da funcionalidade de busca de restaurantes

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