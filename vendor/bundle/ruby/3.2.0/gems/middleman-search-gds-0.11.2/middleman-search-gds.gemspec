# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman-search/version'

Gem::Specification.new do |spec|
  spec.name          = "middleman-search-gds"
  spec.version       = MiddlemanSearch::VERSION
  spec.authors       = ["Government Digital Service", "Matías García Isaía", "Santiago Palladino"]
  spec.email         = ["govuk-dev@digital.cabinet-office.gov.uk", "mgarcia@manas.com.ar", "spalladino@manas.com.ar"]
  spec.summary       = %q{LunrJS-based search for Middleman}
  spec.description   = %q{LunrJS-based search for Middleman. This is an unofficial fork of the middleman-search gem.}
  spec.homepage      = "http://github.com/alphagov/middleman-search"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "middleman-core", [">= 3.2"]
  spec.add_dependency "execjs", ["~> 2.6"]
  spec.add_dependency "nokogiri", ["~> 1.6"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
