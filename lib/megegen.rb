require 'rails/generators'

module Megegen
  namespace :db do
    desc "Creates a new migration file with the specified name"
    task :new_migration, :name, :migrations_path do |t, args|
      migrations_path = args[0] || ENV['migrations_path']
      name            = args[1] || ENV['name']

      # Primitive approach take no options
      params = name
      Rails::Generators.invoke "active_record_migrations:migration", params, behavior: :invoke, destination_root: migrations_path
    end
  end
end
