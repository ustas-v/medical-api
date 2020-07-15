# frozen_string_literal: true

Dir[Rails.root.join('lib', 'extends', '**', '*.rb')].sort.each { |ext| require(ext) }