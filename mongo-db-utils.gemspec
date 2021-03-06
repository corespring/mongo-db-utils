# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mongo-db-utils/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["edeustace"]
  gem.email         = ["ed.eustace@gmail.com"]
  gem.description   = %q{some utilities for managing your mongod dbs}
  gem.summary       = %q{some utilities for managing your mongod dbs}
  gem.homepage      = "https://github.com/edeustace/mongo-db-utils"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mongo-db-utils"
  gem.require_paths = ["lib"]
  gem.required_ruby_version = '>= 1.9.3'
  gem.version       = MongoDbUtils::VERSION
  gem.add_development_dependency "rspec", "~> 2.6"
  gem.add_development_dependency "cucumber"
  gem.add_development_dependency "aruba"
  gem.add_development_dependency "rake", "~> 10.1.0"
  gem.add_dependency "highline", "~> 1.6.13"
  gem.add_dependency "thor"
  gem.add_dependency "mongo", "1.9.0"
  gem.add_dependency "bson", "1.9.0"
  gem.add_dependency "bson_ext", "1.9.0"
  gem.add_dependency "aws-s3", "~> 0.6.3"


end
