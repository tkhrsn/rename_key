# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rename_key/version'

Gem::Specification.new do |spec|
  spec.name          = "rename_key"
  spec.version       = RenameKey::VERSION
  spec.authors       = ["sano.takahiro"]
  spec.email         = ["tkhrsn@yahoo.co.jp"]

  spec.summary       = %q{add Hash#rename_key}
  spec.description   = %q{rename hash key}
  spec.homepage      = "https://github.com/tkhrsn/rename_key"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "coveralls"
end
