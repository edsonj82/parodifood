***Settings***
Documentation       Ações da funcionalidade de busca de restaurantes

***Variables***
${DIV_BOX_RESTAURANT}           css=div[class="place-info-box"][style="opacity: 1;"]

***Keywords***
Go To Restaurants
    Click                       text=Estou com fome!
    Get Text                    h1 strong      contains        Ta na hora de matar a fome!

Choose Restaurant
    [Arguments]                 ${super_var}     

    Click                       text=${super_var["restaurant"]}
    Wait For Elements State     css=#detail    visible     10
    Get text                    css=#detail    contains    ${super_var["desc"]}

Search By
    [Arguments]                 ${value}
    Click                       css=.search-link
    Fill Text                   css=input[formcontrolname="searchControl"]      ${value}

Restaurant Should Be visible
    [Arguments]                 ${name}
    Wait For Elements State     ${DIV_BOX_RESTAURANT}       visible     10         
    Get Text                    css=.place-info-box         contains    ${name}

Restaurant Count Should Be
    [Arguments]                 ${qdt}
    Wait For Elements State     ${DIV_BOX_RESTAURANT}       visible     10         
    Get Element Count           css=.place-info-box         equal       ${qdt}
    