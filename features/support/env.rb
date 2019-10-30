require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require 'pry'

Capybara.default_driver = :selenium_chrome

Capybara.app_host = 'https://www.olx.com.br'

CAPS = Selenium::WebDriver::Remote::Capabilities.chrome(
  'chromeOptions' => {
    'args' => ['--start-maximized',
               '--test-type',
               '--no-sandbox',
               '--incognito',
               '--no-cache'],
    'excludeSwitches' => ['--ignore-certificate-errors']
  }
)
