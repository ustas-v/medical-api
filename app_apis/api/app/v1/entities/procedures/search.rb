# frozen_string_literal: true

module API::App::V1::Entities::Procedures
  class Search < Base
    expose :id,
            documentation: {
              type: 'Integer', required: true,
              desc: 'ID'
            }
    expose :name,
            documentation: {
              type: 'String', required: true,
              desc: 'Name'
            }

    tag_description :search, 'Results of search'
  end
end