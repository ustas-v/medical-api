namespace :db_migrate do

  desc 'Import all procedures'
  task task_01: :environment do

    Procedure.delete_all

    filename   = 'lib/tasks/data-migrations/procedures.txt'
    procedures = []

    File.readlines(filename).each do |line|
      procedure = line.strip

      next if procedure.blank?

      procedures << { name: procedure }
    end

    Procedure.import procedures if procedures.present?

    puts "Imported: #{procedures.size}"
  end
end