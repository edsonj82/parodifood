***Settings***
Resource       ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   Take Screenshot

***Test Cases***
Cenario: Deve realizar um novo pedido em Dinheiro
    ${order_json}                Get Json        order.json
    
    Go To Restaurants
    Choose Restaurant           ${order_json}

    FOR     ${product}  IN  @{order_json["products"]}
        Add to Cart             ${product["name"]}
        Should Add to Cart      ${product["name"]}
    END

    Go Checkout
    Fill Data Customer          ${order_json["customer"]}
    Select Payment Option       ${order_json["payment"]}
    Pay Order
    Order Should Be Completed
