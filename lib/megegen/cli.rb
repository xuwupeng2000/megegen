require 'thor'
require 'rails/generators'

# Overwrite method to skip Rails configures etc.
# Mege.Gen can only generates ActiveRecord timestamped migrations
module ActiveRecord
  class Migration
    class << self
      def next_migration_number(number)
        number = [Time.now.utc.strftime("%Y%m%d%H%M%S"), "%.14d" % number].max
        number
      end
    end
  end
end

module Megegen
  class CLI < Thor
    desc "generate <NameOfMigration> <MigrationsPath>", "generate ActiveRecord timestamped migrations"
    def generate(migration_name, migrations_path = nil)
      migrations_name = migration_name  || ENV['migrations_name']
      migrations_path = migrations_path || ENV['migrations_path']

      # Primitive approach take no options
      params = [migration_name]
      Rails::Generators.invoke "active_record:migration", params, behavior: :invoke, destination_root: migrations_path
    end
  end
end
