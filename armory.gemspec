$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "armory/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "armory-ruby"
  s.version     = Armory::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["William Volin"]
  s.email       = ["williamvolin@live.com"]
  s.homepage    = "http://www.healerchat.com"
  s.summary     = "Provides limited access to WoW Armory API"
  s.description = "A World of Warcraft Armory API Adapter for Ruby"
  s.license     = "MIT"

  s.files = `git ls-files`.split("\n")
  s.require_paths = ["lib"]
  # s.add_development_dependency "rspec", "~> 3.1.0"
end
