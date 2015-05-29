require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

CONSTANTS = YAML::load_file(File.join(File.dirname(File.expand_path(__FILE__)), 'constants.yml'))
FOOD_TAGS = File.read(File.join(File.dirname(File.expand_path(__FILE__)), 'food_tags.txt'))

module TwitterTag
  class Application < Rails::Application

  end
end
