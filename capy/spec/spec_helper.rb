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

  config.before(:example) do
    page.current_window.resize_to(1280, 800)
  end

  config.after(:example) do |e|
    # Expressão regular para retirar acentos e inserir underline no lugar de espaços do nome do cenário 
    nome = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_')
    # Captura a tela. O IF short (ou IF ternário) adicionado ao final captura a tela somente quando há erro
    page.save_screenshot('log/' + nome + '.png') if e.exception
  end

end

# Configuração do driver para execução do projeto Capybara
Capybara.configure do |config|
  # Apontando para o navegador - ":selenium_chrome" (Chrome) ou ":selenium" (Firefox)
  # Necessário baixar a versão do webdriver correto do navegador correspondente ao teste
  # Chrome = chromedriver: <https://chromedriver.storage.googleapis.com/index.html>
  # Firefox = Mozilla geckodriver: <https://github.com/mozilla/geckodriver/releases>
  # Aponta para o Google. Para abrir o navegador em modo oculto, acrescentar ao final da definição "_headless"
  config.default_driver = :selenium_chrome

  # Definição do timeout (tempo máximo) para o Capybara encontrar um elemento
  config.default_max_wait_time = 5
  config.app_host = 'http://training-wheels-protocol.herokuapp.com'
end