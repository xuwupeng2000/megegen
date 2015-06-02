# Mege.Gen

Migration file enerator - It knows how to invoke Rails's ActiveRecord enerator

## How to use it
Include this gem in your Gemfile

```
gem 'megegen', '0.1.5'
```

Type the following command in your console

```
bundle exec rake db:new_migration name=CreateLedgerEntires migrations_path=./db/migrate --trace
```

