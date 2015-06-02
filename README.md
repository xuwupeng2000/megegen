# Mege.Gen

ActiveRecord timestamped migrations generator - It knows how to invoke Rails's ActiveRecord generator
So you can use Rails Migration Generator without include Rails in your project.

---
NOTE: *Mege.Gen* can only generates ActiveRecord timestamped migrations
NOTE: Please use 0.2.1 and above
---

MegeGen provides two interfaces to Rails's Migration Generator
- CLI
- db Rake Task

## Via CLI Interface
Install megegen as gem locally
Then you will have megegen as command
```
gem install megegen
cd <project>
megegen generate <NameOfMigration>

```

## Via Rake Task
Include this gem in your Gemfile

```
gem 'megegen', '0.2.0'
```

Then in your Rakefile
```
require 'megegen'
```

Type the following command in your console

```
bundle exec rake -T db
```

