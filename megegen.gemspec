# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'megegen/version'

Gem::Specification.new do |spec|
  spec.name          = "megegen"
  spec.version       = Megegen::VERSION
  spec.authors       = ["Jack Wu"]
  spec.email         = ["xuwupeng2000@gmail.com"]

  spec.summary       = %q{Mege.Gen Migration file generator - It knows how to invoke Rails's generator }
  spec.description   = %q{Migration file generator - It knows how to invoke Rails's generator }
  spec.homepage      = "https://github.com/xuwupeng2000/migration-generator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.metadata = { "author" => "Jack Wu" }

  spec.add_dependency "bundler", "~> 1.9"
  spec.add_dependency "rake", "~> 10.0"
  spec.add_dependency "rails"
  spec.add_dependency "thor"
end
