module MatchResponseSchema
  extend ActiveSupport::Concern

  included do
    def match_response_schema(schema, response, options = {})
      default_optitons = { strict: true, validate_schema: true }
      schema_directory = "#{Dir.pwd}/spec/support/schemas"
      schema_path = "#{schema_directory}/#{schema}.json"

      JSON::Validator.clear_cache
      JSON::Validator.validate!(schema_path, response, default_optitons.merge(options))
    end
  end

  RSpec.configure do |config|
    config.include self
  end
end