# -*- encoding: utf-8 -*-
# stub: logging 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "logging".freeze
  s.version = "2.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tim Pease".freeze]
  s.date = "2015-03-29"
  s.description = "Logging is a flexible logging library for use in Ruby programs based on the\ndesign of Java's log4j library. It features a hierarchical logging system,\ncustom level names, multiple output destinations per log event, custom\nformatting, and more.".freeze
  s.email = "tim.pease@gmail.com".freeze
  s.extra_rdoc_files = ["History.txt".freeze]
  s.files = ["History.txt".freeze]
  s.homepage = "http://rubygems.org/gems/logging".freeze
  s.rdoc_options = ["--main".freeze, "README.md".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "A flexible and extendable logging library for Ruby".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<little-plugger>.freeze, ["~> 1.1"])
      s.add_runtime_dependency(%q<multi_json>.freeze, ["~> 1.10"])
      s.add_development_dependency(%q<flexmock>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<bones-git>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<bones>.freeze, [">= 3.8.3"])
    else
      s.add_dependency(%q<little-plugger>.freeze, ["~> 1.1"])
      s.add_dependency(%q<multi_json>.freeze, ["~> 1.10"])
      s.add_dependency(%q<flexmock>.freeze, ["~> 1.0"])
      s.add_dependency(%q<bones-git>.freeze, ["~> 1.3"])
      s.add_dependency(%q<bones>.freeze, [">= 3.8.3"])
    end
  else
    s.add_dependency(%q<little-plugger>.freeze, ["~> 1.1"])
    s.add_dependency(%q<multi_json>.freeze, ["~> 1.10"])
    s.add_dependency(%q<flexmock>.freeze, ["~> 1.0"])
    s.add_dependency(%q<bones-git>.freeze, ["~> 1.3"])
    s.add_dependency(%q<bones>.freeze, [">= 3.8.3"])
  end
end
