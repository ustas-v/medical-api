# frozen_string_literal: true

module API::Services::Searchers
  class Procedures < Base

    string :query

    def execute
      result = search_items

      raise ::API::App::Exceptions::SearchResultNotFoundError if result.blank?

      result
    end

    private

    def search_items
      ::Procedure.search_by_name query
    end
  end
end