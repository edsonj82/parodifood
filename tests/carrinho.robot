***Settings***
Resource       ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   Take Screenshot

***Test Cases***
Cenario: Deve adicionar um item ao carrinho

    &{restaurant}       Create Dictionary   restaurant=STARBUGS COFFEE        
    ...     desc=Nada melhor que um café pra te ajudar a resolver um bug.

    Go To Restaurants
    Choose Restaurant           ${restaurant}
    Add to cart                 Starbugs 500 error
    Should Add to Cart            Starbugs 500 error
    Total Cart Should Be        15,60 

Cenario: Deve adicionar os 3 itens no carrinho
    [Tags]  temp
    
    ${cart_json}                Get Json        cart.json
    
    Go To Restaurants
    Choose Restaurant           ${cart_json}

    FOR     ${product}  IN  @{cart_json["products"]}
        Add to Cart             ${product["name"]}
        Should Add to Cart      ${product["name"]}
    END

    Total Cart Should Be        ${cart_json["total"]}
