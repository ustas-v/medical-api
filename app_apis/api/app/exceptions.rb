# frozen_string_literal: true

module API::App::Exceptions
  class SearchResultNotFoundError   < StandardError; end
  class RouteApiPointNotFoundError  < StandardError; end

  # class ExtendExampleError < StandardError
  #   attr_reader :status

  #   def initialize(message, status)
  #     super(message)
  #     @status = status
  #   end
  # end
end