# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nigel/version'

Gem::Specification.new do |spec|
  spec.name          = "nigel"
  spec.version       = Nigel::VERSION
  spec.authors       = ["Zach Latta"]
  spec.email         = ["zchlatta@gmail.com"]
  spec.description   = %q{Flood a directory with Nigel Thornberry GIFs.}
  spec.summary       = %q{Nigel. Nigel everywhere.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "commander"
  spec.add_dependency "google-search"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
