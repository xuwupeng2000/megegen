# Mege.Gen

Migration file enerator - It knows how to invoke Rails's ActiveRecord enerator

## How to use it
Include this gem in your Gemfile

```
gem 'megegen', '0.1.6'
```

Type the following command in your console

```
# Normally you don't need to tell megegen your migrations_path
bundle exec rake db:new_migration name=CreateLedgerEntires --trace
# May be you do sometimes
bundle exec rake db:new_migration name=CreateLedgerEntires migrations_path=./db/cool_migrates --trace
```

