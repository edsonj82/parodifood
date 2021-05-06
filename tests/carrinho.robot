***Settings***
Resource       ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   Take Screenshot

***Test Cases***
Cenario: Deve adicionar um item ao carrinho

    &{restaurant}       Create Dictionary   name=STARBUGS COFFEE        
    ...     desc=Nada melhor que um café pra te ajudar a resolver um bug.

    Go To Restaurants
    Choose Restaurant           ${restaurant}
    Add to cart                 Starbugs 500 error
    Show Add to Cart            Starbugs 500 error
    Total Cart Should Be        15,60 

Cenario: Deve adicionar os 3 itens no carrinho
    [Tags]  temp
    &{restaurant}       Create Dictionary   name=STARBUGS COFFEE        
    ...     desc=Nada melhor que um café pra te ajudar a resolver um bug.

    Go To Restaurants
    Choose Restaurant           ${restaurant}

    Add to cart                 Cappuccino com Chantilly
    Should Add to Cart          Cappuccino com Chantilly

    Add to cart                 Super Espreso
    Should Add to Cart            Super Espreso

    Add to cart                 Starbugs 500 error
    Should Add to Cart            Starbugs 500 error

    Total Cart Should Be        38,00 

    sleep   10
***Keywords***
Choose Restaurant
    [Arguments]                 ${restaurant}     

    Click                       text=${restaurant["name"]}
    Wait For Elements State     css=#detail    visible     10
    Get text                    css=#detail    contains    ${restaurant["desc"]}

Add to Cart
    [Arguments]                 ${name}
    Click                       xpath=//span[text()="${name}"]/..//a[@class="add-to-cart"]

Should Add to Cart
    [Arguments]                 ${name}
    Wait For Elements State     css=#cart tr >> text=${name}    visible     5

Total Cart Should Be
    [Arguments]                 ${total}
    Get Text                    xpath=//th[contains(text(),"Total")]/..//td     contains    ${total}