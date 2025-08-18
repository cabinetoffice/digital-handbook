# -*- encoding: utf-8 -*-
# stub: govuk_tech_docs 4.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "govuk_tech_docs".freeze
  s.version = "4.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Government Digital Service".freeze]
  s.bindir = "exe".freeze
  s.date = "1980-01-02"
  s.description = "Gem to distribute the GOV.UK Tech Docs Template. See https://github.com/alphagov/tech-docs-gem for the project.".freeze
  s.email = ["govuk-dev@digital.cabinet-office.gov.uk".freeze]
  s.homepage = "https://github.com/alphagov/tech-docs-gem".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.1.0".freeze)
  s.rubygems_version = "3.4.19".freeze
  s.summary = "Gem to distribute the GOV.UK Tech Docs Template".freeze

  s.installed_by_version = "3.4.19" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<autoprefixer-rails>.freeze, ["~> 10.2"])
  s.add_runtime_dependency(%q<base64>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<bigdecimal>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<chronic>.freeze, ["~> 0.10.2"])
  s.add_runtime_dependency(%q<concurrent-ruby>.freeze, ["= 1.3.4"])
  s.add_runtime_dependency(%q<csv>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<haml>.freeze, ["~> 6.0"])
  s.add_runtime_dependency(%q<middleman>.freeze, ["= 4.5.1"])
  s.add_runtime_dependency(%q<middleman-autoprefixer>.freeze, ["~> 2.10"])
  s.add_runtime_dependency(%q<middleman-compass>.freeze, ["~> 4.0"])
  s.add_runtime_dependency(%q<middleman-livereload>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<middleman-search-gds>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<middleman-sprockets>.freeze, ["~> 4.0.0"])
  s.add_runtime_dependency(%q<middleman-syntax>.freeze, ["~> 3.4"])
  s.add_runtime_dependency(%q<mutex_m>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<nokogiri>.freeze, [">= 0"])
  s.add_runtime_dependency(%q<openapi3_parser>.freeze, ["~> 0.9.0"])
  s.add_runtime_dependency(%q<redcarpet>.freeze, ["~> 3.6"])
  s.add_runtime_dependency(%q<terser>.freeze, ["~> 1.2.3"])
  s.add_runtime_dependency(%q<sassc-embedded>.freeze, ["~> 1.78.0"])
  s.add_development_dependency(%q<byebug>.freeze, [">= 0"])
  s.add_development_dependency(%q<capybara>.freeze, ["~> 3.32"])
  s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9"])
  s.add_development_dependency(%q<rubocop-govuk>.freeze, ["~> 4.10"])
end
