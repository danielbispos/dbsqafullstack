# Importação do Capybara e dependências com módulo do Rspec e Selenium WebDriver
require "capybara"
require "capybara/rspec"
require "selenium-webdriver"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  
  # Inclusão da DSL (todos os métodos, funções e recursos) do Capybara
  config.include Capybara::DSL
end

Capybara.register_driver :selenium_firefox do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox, marionette: true)
end

# Configuração do driver para execução do projeto Capybara
Capybara.configure do |config|
  # Apontando para o navegador - ":selenium_chrome" (Chrome) ou ":selenium" (Firefox)
  # Necessário baixar a versão do webdriver correto do navegador correspondente ao teste
  # Chrome = chromedriver: <https://chromedriver.storage.googleapis.com/index.html>
  # Firefox = Mozilla geckodriver: <https://github.com/mozilla/geckodriver/releases>
  # Aponta para o Firefox
  config.default_driver = :selenium_chrome

  # Definição do timeout (tempo máximo) para o Capybara encontrar um elemento
  config.default_max_wait_time = 5
end