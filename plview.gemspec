# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'plview/version'

Gem::Specification.new do |spec|
  spec.name          = "plview"
  spec.version       = Plview::VERSION
  spec.authors       = ["Yusuke Mito"]
  spec.email         = ["y310.1984@gmail.com"]
  spec.summary       = %q{plist viewer for iOS Simulator}
  spec.description   = %q{plist viewer for iOS Simulator}
  spec.homepage      = "https://github.com/y310/plview"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "CFPropertyList", "~> 2.2"
  spec.add_dependency "slop", "~> 3.4"
  spec.add_development_dependency "bundler", "~> 1.4"
  spec.add_development_dependency "rake"
end
