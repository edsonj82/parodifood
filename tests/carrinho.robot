***Settings***
Resource       ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   Take Screenshot

***Test Cases***
Cenario: Deve adicionar um item ao carrinho

    &{restaurant}       Create Dictionary   name=STARBUGS COFFEE        desc=Nada melhor que um café pra te ajudar a resolver um bug.

    Go To Restaurants
    Choose Restaurant           
    ...     ${restaurant}

***Keywords***
Choose Restaurant
    [Arguments]                 ${restaurant}     

    Click                       text=${restaurant["name"]}
    Wait For Elements State     css=#detail    visible     10
    Get text                    css=#detail    contains    ${restaurant["desc"]}
