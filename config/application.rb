require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'sprockets/railtie' if Rails.env.development?

Bundler.require(*Rails.groups)

module TimekeeperApi
  class Application < Rails::Application
    config.active_record.timestamped_migrations = false
  end
end
