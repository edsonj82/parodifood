***Settings***
Resource       ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   Take Screenshot

***Test Cases***
Cenario: Deve buscar um único restaurante
    Go To Restaurants
    Search By                       Debuger
    Restaurant Should Be visible    DEBUGER KING
    Restaurant Count Should Be      1

Cenario: Deve buscar por categoria
    Go To Restaurants
    Search By                       Cafe
    Restaurant Should Be visible    STARBUGS COFFEE

Cenario: Deve retornar todos os restaurantes
    Go To Restaurants
    Search By                       a
    Restaurant Count Should Be      5