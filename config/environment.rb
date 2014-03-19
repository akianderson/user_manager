# Load the Rails application.
require File.expand_path('../application', __FILE__)

YAML.load_file("#{::Rails.root}/config/provider.yml")[::Rails.env].each {|k,v| ENV[k] = v } if Rails.env.development?
YAML.load_file("#{::Rails.root}/app/config/provider.yml")[::Rails.env].each {|k,v| ENV[k] = v } if Rails.env.production?


# Initialize the Rails application.
UserManager::Application.initialize!
