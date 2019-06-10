require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TeatroSantanderRooftop
  class Application < Rails::Application
    # Use the responders controller from the responders gem
    config.app_generators.scaffold_controller :responders_controller

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.time_zone = 'Brasilia'
    #config.active_record.default_timezone = 'Brasilia'

    config.active_record.default_timezone = :local
    config.active_record.time_zone_aware_attributes = false

    config.i18n.enforce_available_locales = true
    config.i18n.default_locale = :'pt-BR'
    config.i18n.locale = :'pt-BR'


    config.assets.initialize_on_precompile = false
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')

    config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/

    config.public_file_server.enabled = true

    # config.active_record.raise_in_transactional_callbacks = true

    config.exceptions_app = self.routes

    config.autoload_paths = %W(#{config.root}/app)

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
