$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "helpy_google_chat/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "helpy_google_chat"
  s.version     = HelpyGooleChat::VERSION
  s.authors     = ["Jose Irizarry"]
  s.email       = ["jose.irizarry@cdi-lab.com"]
  s.homepage    = "http://helpy.io"
  s.summary     = "Google Chat notifier for Helpy discussions"
  s.description = "Posts to Google Chat when a new discussion is posted"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"
  s.add_dependency "deface"

  s.add_development_dependency "sqlite3"
end
