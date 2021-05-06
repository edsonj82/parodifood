***Settings***
Resource       ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   Take Screenshot

***Test Cases***
Cenario: Deve adicionar um item ao carrinho

    &{restaurant}       Create Dictionary   name=STARBUGS COFFEE        
    ...     desc=Nada melhor que um café pra te ajudar a resolver um bug.

    Go To Restaurants
    Choose Restaurant           ${cart_json}
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


    sleep   10
***Keywords***
Choose Restaurant
    [Arguments]                 ${super_var}     

    Click                       text=${super_var["restaurant"]}
    Wait For Elements State     css=#detail    visible     10
    Get text                    css=#detail    contains    ${super_var["desc"]}

Add to Cart
    [Arguments]                 ${name}
    Click                       xpath=//span[text()="${name}"]/..//a[@class="add-to-cart"]

Should Add to Cart
    [Arguments]                 ${name}
    Wait For Elements State     css=#cart tr >> text=${name}    visible     5

Total Cart Should Be
    [Arguments]                 ${total}
    Get Text                    xpath=//th[contains(text(),"Total")]/..//td     contains    ${total}