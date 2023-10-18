require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module RailsPictureApp
  class Application < Rails::Application
    config.load_defaults 6.1
    config.time_zone = 'Asia/Tokyo'
    config.generators do |g|
      g.assets false
      g.helper false
    end
  end
end
