***Settings***
Resource       ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   Take Screenshot

***Test Cases***
Cenario: Deve adicionar um item ao carrinho
    ${name}             Set Variable         STARBUGS COFFEE
    ${desc}             Set Variable         Nada melhor que um café pra te ajudar a resolver um bug.
    Go To Restaurants
    Choose Restaurant           
    ...     ${name}     ${desc}

***Keywords***
Choose Restaurant
    [Arguments]                 ${name}             ${description}     

    Click                       text=${name}
    Wait For Elements State     css=#detail                visible     10
    Get text                    css=#detail    contains    ${description}
