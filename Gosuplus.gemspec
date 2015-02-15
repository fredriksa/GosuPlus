# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Gosuplus/version'

Gem::Specification.new do |spec|
  spec.name          = "Gosuplus"
  spec.version       = Gosuplus::VERSION
  spec.authors       = ["Freddan962"]
  spec.email         = ["fredde.sander@gmail.se"]

  spec.summary       = %q{Gosuplus is a extension for Gosu}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/Freddan962/GosuPlus"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
