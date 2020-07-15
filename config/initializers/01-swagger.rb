# frozen_string_literal: true

GrapeSwaggerRails.options.app_name = 'Medical API'
GrapeSwaggerRails.options.url      = '/api/app/v1/docs.json'
GrapeSwaggerRails.options.before_action do
  GrapeSwaggerRails.options.app_url = "#{request.protocol}#{request.host_with_port}"
end
GrapeSwaggerRails.options.api_key_name = 'X-Session-Token'
GrapeSwaggerRails.options.api_key_type = 'header'