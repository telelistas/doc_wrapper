$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "doc_wrapper/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "doc_wrapper"
  s.version     = DocWrapper::VERSION
  s.authors     = ["nardele salomon"]
  s.email       = ["noliveira@telelistas.net"]
  s.homepage    = "www.telelistas.net"
  s.summary     = "A doc converter to another doc"
  s.description = "A doc converter to another doc. Doc is a data structure like a hash, array or a simple string"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  # s.add_dependency "rails", "~> 4.1.5"

  # s.add_development_dependency "sqlite3"
end
