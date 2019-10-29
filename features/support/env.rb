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
    'args' => ['--window-size=1366,768',
               '--test-type',
               '--no-sandbox',
               '--incognito',
               '--no-cache'],
    'excludeSwitches' => ['--ignore-certificate-errors']
  }
)

CAPS_HEADLESS = Selenium::WebDriver::Remote::Capabilities.chrome(
  'chromeOptions' => {
    'args' => ['--window-size=1366,768',
               '--test-type',
               '--no-sandbox',
               '--incognito',
               '--headless',
               '--disable-gpu',
               '--disable-dev-shm-usage',
               '--no-cache'],
    'excludeSwitches' => ['--ignore-certificate-errors']
  }
)

def register_chrome(app)
  Capybara::Selenium::Driver.new(app,
                                 browser: :chrome,
                                 http_client: CLIENT,
                                 desired_capabilities: CAPS)
end

def register_chromeheadless(app)
  Capybara::Selenium::Driver.new(app,
                                 browser: :chrome,
                                 http_client: CLIENT,
                                 desired_capabilities: CAPS_HEADLESS)
end

Capybara.register_driver :headless_chrome do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome(loggingPrefs: { browser: 'ALL' })
  opts = Selenium::WebDriver::Chrome::Options.new

  chrome_args = %w[--headless --window-size=1920,1080 --no-sandbox --disable-dev-shm-usage]
  chrome_args.each { |arg| opts.add_argument(arg) }
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: opts, desired_capabilities: caps)
end

## register driver according with environment and browser chosen
Capybara.register_driver :selenium_chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
