# frozen_string_literal: true

module API::App::V1::Helpers::Errors
  extend ActiveSupport::Concern

  AI_VALIDATION_ERRORS = [
    ActiveInteraction::InvalidInteractionError
  ]

  FATAL_VALIDATION_ERRORS = [
    Grape::Exceptions::InvalidMessageBody
  ]

  SEARCH_ERRORS = [
    ::API::App::Exceptions::SearchResultNotFoundError
  ]

  included do

    rescue_from *AI_VALIDATION_ERRORS do |e|
      error!({ error: "AI Validation: #{e}", code: 422, reason: e.class.to_s }, 422)
    end

    rescue_from *FATAL_VALIDATION_ERRORS do |e|
      error!({ error: "Fatal params error: #{e.message}", code: 422, reason: e.class.to_s }, 422)
    end

    rescue_from *SEARCH_ERRORS do |e|
      error!({ error: 'Search result: not found!', code: 404, reason: e.class.to_s }, 404)
    end

    rescue_from ActiveRecord::RecordNotFound do |e|
      message = Rails.env.development? ? "Resource not found: #{e.message}" : 'Resource not found'
      error!({ error: message, code: 404, reason: e.class.to_s }, 404)
    end

    rescue_from JSON::ParserError do
      error!({ error: "Invalid JSON value: #{e.message}", code: 422 }, 422)
    end

    rescue_from ::API::App::Exceptions::RouteApiPointNotFoundError do |e|
      error!({ error: e.message, code: 500, reason: e.class.to_s }, 500)
    end

    rescue_from ArgumentError do |e|
      error!({
               error: "ArgumentError: #{e.message}",
               code: 422, reason: e.class.to_s
             }, 422)
    end

    # Delegate other exceptions to Bugsnag
    rescue_from :all do |e|
      if Rails.env.development?
        raise e
      else
        # For example, send unhandled errors to error trackers

        # Rails.logger.error({
        #   message: e.message,
        #   code: 500,
        #   exception: e.backtrace
        # })
        # Bugsnag.notify(e)

        error!({
          error: 'Fatal error!',
          code: 500,
          reason: "#{e.class.to_s}: Please send the current report to developers."
        }, 500)
      end
    end
  end
end