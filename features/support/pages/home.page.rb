class HomePage
  include Capybara::DSL

  def acesso_menu_lateral
    find(:xpath, "//div[contains(@class, 'MediaMatch')]//button[contains(@class, 'styles__ButtonMenu')]").click
  end

  def opcao_menu_lateral
    find(:xpath, "(//a[text()='Entre ou Cadastre-se'])[3]").click
  end

  def acessar_conta(email, senha)
    find("#email").set email
    find("#password").set senha
    btn = find_all("button", text: "Entrar")
    btn[0].click
  end

  def validacao_login_home
    find(:xpath, "//h2[text()='Olá']")
  end
end
