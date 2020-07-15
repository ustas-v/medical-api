class AddColumnNameTsvectorToProcedures < ActiveRecord::Migration[5.2]
  def up
    execute <<-SQL
      ALTER TABLE procedures
      ADD COLUMN name_tsvector tsvector GENERATED ALWAYS AS (
        setweight(to_tsvector('english', coalesce(name, '')), 'A')
      ) STORED;
    SQL
  end

  def down
    remove_column :procedures, :name_tsvector
  end
end
