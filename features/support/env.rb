require "capybara"
require "capybara/cucumber"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome #define o chrome como navegador de execução
  config.default_max_wait_time = 30 #define o tempo para encontrar elemento na tela
end
