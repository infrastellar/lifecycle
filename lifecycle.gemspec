# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "lifecycle/version"

Gem::Specification.new do |spec|
  spec.name          = "lifecycle"
  spec.version       = Lifecycle::VERSION
  spec.authors       = ["Curt Micol"]
  spec.email         = ["asenchi@asenchi.com"]

  spec.summary       = %q{Manage application lifecycles}
  spec.description   = %q{Manage application lifecycles}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "statesman", "~> 3.1.0"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
