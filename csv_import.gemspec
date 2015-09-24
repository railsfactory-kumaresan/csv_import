# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'csv_import/version'

Gem::Specification.new do |spec|
  spec.name          = "csv_import"
  spec.version       = CsvImport::VERSION
  spec.authors       = ["Kumaresan"]
  spec.email         = ["kumaresan@railsfactory.org"]

  spec.summary       = %q{A library to import millions of records via ActiveRecod}
  spec.description   = %q{A library to import millions of records via ActiveRecod}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "fileutils"
  spec.add_development_dependency "mail"
end
