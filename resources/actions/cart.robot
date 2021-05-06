
***Settings***

Documentation               Ações da funcionalidade do carrinho de compras

***Keywords***
Add to Cart
    [Arguments]                 ${name}
    Click                       xpath=//span[text()="${name}"]/..//a[@class="add-to-cart"]

Should Add to Cart
    [Arguments]                 ${name}
    Wait For Elements State     css=#cart tr >> text=${name}    visible     5

Total Cart Should Be
    [Arguments]                 ${total}
    Get Text                    xpath=//th[contains(text(),"Total")]/..//td     contains    ${total}