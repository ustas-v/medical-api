# frozen_string_literal: true

module API::App::V1
  class Base < Grape::API
    include ::API::App::V1::Helpers::Errors
    include ::API::App::V1::Helpers::Descriptions

    version 'v1', using: :path, vendor: 'Neebo App API'
    prefix nil

    content_type :json, 'application/json; charset=UTF-8'
    default_format :json
    format :json

    # Mount controllers with API endpoints
    mount Controllers::Procedures::Search

    add_swagger_documentation(
      api_version: 'v1',
      doc_version: '1.0',
      mount_path: '/docs',
      base_path: '/api/app',
      info: { title: 'Medical API' },
      tags: ::API::App::V1::Entities::Base.tags
    )

    route :any, '*path' do
      raise ::API::App::Exceptions::RouteApiPointNotFoundError,
            'Unable to find API endpoint!'
    end
  end
end