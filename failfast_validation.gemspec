$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "failfast_validation/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "failfast_validation"
  s.version     = FailfastValidation::VERSION
  s.author      = "Shota Iguchi"
  s.email       = "shota-iguchi@cookpad.com"
  s.homepage    = "https://github.com/iguchi1124/failfast_validation"
  s.summary     = "Failfast mode for ActiveModel::Validations"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0.rc1"

  s.add_development_dependency "mysql2"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "pry-rails"
end
