# frozen_string_literal: true

module API::App::V1::Entities
  class Error < Grape::Entity
    expose :code,
            documentation: {
              type: 'Integer',
              desc: 'Error code',
              required: true
            }
    expose :error,
            documentation: {
              type: 'String',
              desc: 'Error description',
              required: true
            }
    expose :reason,
            documentation: {
              type: 'String',
              desc: 'Error reason',
              required: false
            }
  end
end