Dado("que eu acesse o menu lateral") do
  @HomePage.acesso_menu_lateral()
end

Dado("eu clique em Entre ou Cadastra-se") do
  @HomePage.opcao_menu_lateral()
end

Dado("eu clique em {string}") do |opcao|
  @LoginPage.opcao_login(opcao)
end

Dado("eu clique em Entrar com email e senha") do
  @LoginPage.opcao_catalogo()
end

Dado("eu digite o login {string} e a senha {string}") do |email, senha|
  @LoginPage.login_catalogo(email, senha)
end

Então("eu devo estar logada") do
  @HomePage.validacao_login_home()
end
