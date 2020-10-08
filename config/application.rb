# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

Unsplash.configure do |config|
  config.application_access_key = "Wc_sw7h2IsJOA11q7w7ZXq4iF9LYa2d5YVZ9jtP9QH4"
  config.application_secret = "PEOevnCJYav4bdQUEJMvCOktpVNNhEAasEHYkYe0At0"
  config.application_redirect_uri = "https://your-application.com/oauth/callback"
  config.utm_source = "alices_terrific_client_app"

  # optional:
  # config.logger = MyCustomLogger.new
end

module Ideaware
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
