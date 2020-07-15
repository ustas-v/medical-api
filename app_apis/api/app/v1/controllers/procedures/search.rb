# frozen_string_literal: true

module API::App::V1::Controllers::Procedures
  class Search < ::API::App::V1::Controllers::Base

    # before { authenticate_session_user! }

    namespace :procedures do
      resource :search do
        # GET /procedures/search.json
        desc 'Search Procedure by name' do
          success ::API::App::V1::Base.success_desc 'Procedures::Search', 'Procedures::Search'
          failure ::API::App::V1::Base.failure_desc
          detail 'Procedures::Search'
        end
        params do
          requires :query, type: String, desc: 'Search query by name'
        end

        get do
          result = ::API::Services::Searchers::Procedures.run! declared(params)

          present result, with: ::API::App::V1::Entities::Procedures::Search
        end
      end
    end
  end
end