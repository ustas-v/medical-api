# frozen_string_literal: true

class API::App::Base < Grape::API

  LOG_FILENAME = Rails.root.join('log', 'api_app_json.log')

  insert_before Grape::Middleware::Error, GrapeLogging::Middleware::RequestLogger,
    logger: (Rails.env.development? ? Logger.new(LOG_FILENAME) : Rails.logger),
    formatter: LogStashLogger::Formatter::JsonLines.new,
    log_level: 'info',
    include: [
               GrapeLogging::Loggers::ClientEnv.new,
               GrapeLogging::Loggers::RequestHeaders.new,
               GrapeLogging::Loggers::FilterParameters.new
             ]

  mount V1::Base

  # Next version:
  # mount V1_1::Base

  # Next version:
  # mount V2::Base

  # and etc.
end