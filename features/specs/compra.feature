# language: pt
Funcionalidade: Finalizar uma compra

    @compra
    Cenario: Realizar uma compra 
        Dado que eu realize a busca pelo produto ""
        E acesse a página do produto
        E clique em "Adicionar"
        E clique em "Ir para o carrinho"
        E clique em Finalizar compra
        E eu digite o login "renata.cruz@cobasi.com.br" e a senha "Cobasi@123"
        E selecione o modo "retira" de entrega
        E clique em continuar para pagamento
        E selecione o metodo de pagamento ""
        E clique em Continuar para revisão
        E clique em finalizar a compra
        Então eu devo visualizar a compra finalizada