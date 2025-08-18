# -*- encoding: utf-8 -*-
# stub: middleman-search-gds 0.11.2 ruby lib

Gem::Specification.new do |s|
  s.name = "middleman-search-gds".freeze
  s.version = "0.11.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Government Digital Service".freeze, "Mat\u00EDas Garc\u00EDa Isa\u00EDa".freeze, "Santiago Palladino".freeze]
  s.date = "2023-03-08"
  s.description = "LunrJS-based search for Middleman. This is an unofficial fork of the middleman-search gem.".freeze
  s.email = ["govuk-dev@digital.cabinet-office.gov.uk".freeze, "mgarcia@manas.com.ar".freeze, "spalladino@manas.com.ar".freeze]
  s.homepage = "http://github.com/alphagov/middleman-search".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.19".freeze
  s.summary = "LunrJS-based search for Middleman".freeze

  s.installed_by_version = "3.4.19" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<middleman-core>.freeze, [">= 3.2"])
  s.add_runtime_dependency(%q<execjs>.freeze, ["~> 2.6"])
  s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1.6"])
  s.add_development_dependency(%q<bundler>.freeze, ["~> 1.5"])
  s.add_development_dependency(%q<rake>.freeze, [">= 0"])
end
