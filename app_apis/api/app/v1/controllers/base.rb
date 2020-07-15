# frozen_string_literal: true

module API::App::V1::Controllers
  class Base < Grape::API
    # Grape params for inherits only, not mount inheritance
    helpers ::API::App::V1::Helpers::Params
  end
end