$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "<%=app_name%>/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "<%=app_name%>"
  s.version     = <%= app_name.camelize%>::VERSION
  s.authors     = ["dev@dehuinet.com"]
  s.email       = ["dev@dehuinet.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}
  s.require_paths = ["lib"]
  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
  s.add_dependency "rails", "~> 3.2.14"
end
