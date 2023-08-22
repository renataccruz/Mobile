require "Capybara"
require "Capybara/cucumber"
require_relative "helper"
require "allure-cucumber"
World(Helper)

BROWSER = ENV["BROWSER"]
#variaveis de browser
case BROWSER
when "firefox"
  @driver = :selenium
when "fire_headless"
  @driver = :selenium_headless
when "chrome"
  @driver = :selenium_chrome
when "chrome_headless"
  @driver = :selenium_chrome_headless
else
  raise "navegador incorreto"
end

#bloco de configuração do Capybara
Capybara.configure do |config|
  config.default_driver = @driver
  config.app_host = "https://www.cobasi.com.br"
  Capybara.default_max_wait_time = 30
  # Capybara.page.driver.browser.manage.window.maximize
end

#bloco de configuração do alurre
AllureCucumber.configure do |config|
  #colocando no diretorio logs
  config.results_directory = "/logs"
  #sempre que o cucumber fizer uma nova execução vai limpa o logs
  config.clean_results_directory = true
  config.logging_level = Logger::INFO
end
