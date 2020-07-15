# frozen_string_literal: true

# == Schema Information
#
# Table name: procedures
#
#  id            :bigint           not null, primary key
#  name          :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  name_tsvector :tsvector
#
# Indexes
#
#  index_procedures_on_name_tsvector  (name_tsvector) USING gin
#

# name_tsvector is a stored tsvector column. enabled only in Postgres 12 and above

class Procedure < ApplicationRecord
  ## Modules, constants, attr_*

  include ::PgSearch::Model

  ## Associations, delegates

  pg_search_scope :search_by_name,
                  against: { name: 'A' },
                  using: {
                    tsearch: {
                      dictionary: 'english', prefix: true,
                      tsvector_column: :name_tsvector,
                      # priority normalization search: short, long
                      normalization: 2
                    }
                  }

  ## Validations

  validates :name, presence: true

  ## Callbacks
  ## Scopes
  ## Other meta methods

  ## Protected methods
  ## Callbacks and etc.
  protected

  ## Private methods
  ## Callbacks and etc.
  private
end
