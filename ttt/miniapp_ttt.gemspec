$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ttt/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ttt"
  s.version     = MiniappTtt::VERSION
  s.authors     = ["dev@dehuinet.com"]
  s.email       = ["dev@dehuinet.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}
  s.require_paths = ["lib"]
  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
end
