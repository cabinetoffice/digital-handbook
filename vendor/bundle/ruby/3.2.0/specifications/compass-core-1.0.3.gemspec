# -*- encoding: utf-8 -*-
# stub: compass-core 1.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "compass-core".freeze
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chris Eppstein".freeze, "Scott Davis".freeze, "Eric M. Suzanne".freeze, "Brandon Mathis".freeze]
  s.date = "2015-01-16"
  s.description = "The Compass core stylesheet library and minimum required ruby extensions. This library can be used stand-alone without the compass ruby configuration file or compass command line tools.".freeze
  s.email = ["chris@eppsteins.net".freeze]
  s.homepage = "http://compass-style.org/reference/compass/".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.19".freeze
  s.summary = "The Compass core stylesheet library".freeze

  s.installed_by_version = "3.4.19" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<sass>.freeze, [">= 3.3.0", "< 3.5"])
  s.add_runtime_dependency(%q<multi_json>.freeze, ["~> 1.0"])
  s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
  s.add_development_dependency(%q<rake>.freeze, [">= 0"])
end
