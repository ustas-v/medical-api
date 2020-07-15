# frozen_string_literal: true

module API::App::V1::Entities::Procedures
  class Base < ::API::App::V1::Entities::Base
    def self.entity_name
      self.to_s.split('::').last(2).join('::')
    end
  end
end