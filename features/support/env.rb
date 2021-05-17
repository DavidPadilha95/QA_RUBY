require "capybara"
require "capybara/cucumber"
require "faker"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
  #  config.app_host = "Url padrao"
    config.default_max_wait_time = 10 #configurando para 5 segundos o tempo maximo de espera
end