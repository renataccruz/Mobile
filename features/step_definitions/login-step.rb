Dado("que eu acesse o menu lateral") do
  find(:xpath, "//div[contains(@class, 'MediaMatch')]//button[contains(@class, 'styles__ButtonMenu')]").click
  sleep 5
end

Dado("eu clique em Entre ou Cadastra-se") do
  find(:xpath, "(//a[@href='/login'])[2]").click
end

Dado("eu clique em Entrar com email e senha") do
  find(:xpath, "//span[text()='Entrar com email e senha']").click
end

Dado("eu digite o login {string} e a senha {string}") do |email, senha|
  find("#email").set email
  find("#password").set senha
  find(:xpath, "//button[text()='Entrar']").click
end

Então("eu devo estar logada") do
  find(:xpath, "//h2[text()='Olá']").click
end
