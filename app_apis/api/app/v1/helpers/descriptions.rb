# frozen_string_literal: true

module API::App::V1::Helpers::Descriptions
  extend ActiveSupport::Concern

  class_methods do
    def success_desc(message, model, session_auth: true)
      desc = { code: 200, message: message, model: "API::App::V1::Entities::#{model}" }
      desc.merge!(
        headers: {
          'X-Session-Token' => {
            description: 'User Session Token', required: true, type: :string
          }
        }
      ) if session_auth
      desc
    end

    def failure_desc
      [
        { code: 401, message: 'Invalid session token or headers format',
          model: API::App::V1::Entities::Error },
        { code: 403, message: 'Access denied for resource',
          model: API::App::V1::Entities::Error },
        { code: 404, message: 'Resource not found',
          model: API::App::V1::Entities::Error },
        { code: 422, message: 'Error validation',
          model: API::App::V1::Entities::Error }
      ]
    end
  end
end