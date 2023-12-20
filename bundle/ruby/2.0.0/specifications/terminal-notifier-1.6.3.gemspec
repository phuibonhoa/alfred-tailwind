# -*- encoding: utf-8 -*-
# stub: terminal-notifier 1.6.3 ruby lib

Gem::Specification.new do |s|
  s.name = "terminal-notifier"
  s.version = "1.6.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Eloy Duran", "Julien Blanchard"]
  s.date = "2015-04-06"
  s.email = ["eloy.de.enige@gmail.com", "julien@sideburns.eu"]
  s.executables = ["terminal-notifier"]
  s.extra_rdoc_files = ["README.markdown"]
  s.files = ["README.markdown", "bin/terminal-notifier"]
  s.homepage = "https://github.com/alloy/terminal-notifier"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "Send User Notifications on Mac OS X 10.8 or higher."

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bacon>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<mocha-on-bacon>, [">= 0"])
    else
      s.add_dependency(%q<bacon>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<mocha-on-bacon>, [">= 0"])
    end
  else
    s.add_dependency(%q<bacon>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<mocha-on-bacon>, [">= 0"])
  end
end
