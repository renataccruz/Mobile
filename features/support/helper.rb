module Helper
  def tirar_foto(nome_arquivo, resultado)
    caminho_arquivo = "resultados/screenshots/teste_#{resultado}"
    foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
    page.save_screenshot(foto)
  end
end
