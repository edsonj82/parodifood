***Settings***
Resource       ${EXECDIR}/resources/base.robot

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
