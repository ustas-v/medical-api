class AddGinIndexToProcedures < ActiveRecord::Migration[5.2]
  disable_ddl_transaction!

  def change
    add_index :procedures, :name_tsvector, using: :gin, algorithm: :concurrently
  end
end
