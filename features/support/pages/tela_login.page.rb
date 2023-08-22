class LoginPage
  include Capybara::DSL

  def opcao_login(opcao)
    case opcao
    when "email e senha"
      find("span", text: "Entrar com email e senha").click
    end
  end

  def login_catalogo(email, senha)
    find("#email").set email
    find("#password").set senha
    find(:xpath, "//button[text()='Entrar']").click
  end
end
