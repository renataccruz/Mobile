# language: pt
Funcionalidade: Realizar login 

    @login-catalogo
    Cenario: Realizar login através da home site
        Dado que eu acesse o menu lateral
        E eu clique em Entre ou Cadastra-se
        E eu clique em "email e senha"
        E eu digite o login "renata.cruz@cobasi.com.br" e a senha "Cobasi@123"
        Então eu devo estar logada