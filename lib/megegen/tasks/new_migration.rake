namespace :db do
  desc "Creates a new migration file with the specified name"
  task :new_migration, :name, :migrations_path do |t, args|
    migrations_path = args.name || ENV['migrations_path']
    name            = args.migrations_path || ENV['name']

    # Primitive approach take no options
    params = [name]
    Rails::Generators.invoke "active_record:migration", params, behavior: :invoke, destination_root: migrations_path
  end
end

