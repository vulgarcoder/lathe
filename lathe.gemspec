# -*- encoding: utf-8 -*-
require File.expand_path('../lib/lathe/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["vulgarcoder"]
  gem.email         = ["vulgarcoder@gmail.com"]
  gem.description   = %q{Generator for plugin developer.}
  gem.summary       = %q{For minxing365.com}
  gem.homepage      = "http://minxing365.com"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "lathe"
  gem.require_paths = ["lib"]
  gem.version       = Miniapps::VERSION



  gem.add_dependency(%q<thor>, ["~> 0.14.6"])

end
