require "report_builder"
require "date"

Before do
  visit "./"
  find("#adopt-accept-all-button").click
  page.current_window.resize_to(375, 667)
  @HomePage = HomePage.new
  @LoginPage = LoginPage.new
end

# After do |cenario|
#   nome_cenario = cenario.name.gsub(/\s+/, "_").tr("/", "_")

#   if cenario.failed?
#     tirar_foto(nome_cenario.downcase!, "falhou")
#   else
#     tirar_foto(nome_cenario.downcase!, "passou")
#   end
# end
After do |cenario|
  foto = "log/evidencia.png"
  encoded_img = page.save_screenshot(foto)
  attach encoded_img, "image/png"
  Capybara.current_session.driver.quit
end

# After do
#   #save_screenshot serve para tirar um print a qualquer momento
#   #passo o local aonde vou salvar o print
#   tempo_shot = page.save_screenshot("logs/temp_screenshot.png")

#   #chamo o modulo do alure para salvar a evidencia
#   #cada linha passo um argumento
#   Allure.add_attachment(
#     #link para acessar a foto
#     name: "Screenshot",
#     #tipo do aquivo
#     type: Allure::ContentType::PNG,
#     #aonde está o aruqivo que esta na temp shot
#     source: File.open(tempo_shot),
#   )
# end

at_exit do
  @infos = {
    "browser" => BROWSER.upcase,
    "ambiente" => "Dev",
    "Data do Teste" => Time.now.to_s,
  }
  ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/report"
    config.report_types = [:html]
    config.report_title = "Cobasi APP"
    config.additional_info = @infos
    config.color = "indigo"
  end
  ReportBuilder.build_report
end
