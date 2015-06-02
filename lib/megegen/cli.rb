require 'thor'
require 'rails/generators'

module Megegen
  class CLI < Thor
    desc "generate <NameOfMigration>", "generate ActiveRecord migration"
    def generate(migration_name, migrations_path = nil)
      migrations_path = migration_name  || ENV['migrations_path']
      name            = migrations_path || ENV['name']

      # Primitive approach take no options
      params = [migration_name]
      Rails::Generators.invoke "active_record:migration", params, behavior: :invoke, destination_root: migrations_path
    end
  end
end
