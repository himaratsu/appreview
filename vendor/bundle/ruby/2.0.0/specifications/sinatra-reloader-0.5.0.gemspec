# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "sinatra-reloader"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Konstantin Haase"]
  s.date = "2010-07-09"
  s.description = "Smart and fast code reloader for Sinatra (part of BigBand)."
  s.email = "konstantin.mailinglists@googlemail.com"
  s.homepage = "http://github.com/rkh/sinatra-reloader"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Smart and fast code reloader for Sinatra (part of BigBand)."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra-advanced-routes>, ["~> 0.5.0"])
      s.add_development_dependency(%q<sinatra-test-helper>, ["~> 0.5.0"])
      s.add_runtime_dependency(%q<sinatra>, ["~> 1.0"])
      s.add_development_dependency(%q<rspec>, [">= 1.3.0"])
    else
      s.add_dependency(%q<sinatra-advanced-routes>, ["~> 0.5.0"])
      s.add_dependency(%q<sinatra-test-helper>, ["~> 0.5.0"])
      s.add_dependency(%q<sinatra>, ["~> 1.0"])
      s.add_dependency(%q<rspec>, [">= 1.3.0"])
    end
  else
    s.add_dependency(%q<sinatra-advanced-routes>, ["~> 0.5.0"])
    s.add_dependency(%q<sinatra-test-helper>, ["~> 0.5.0"])
    s.add_dependency(%q<sinatra>, ["~> 1.0"])
    s.add_dependency(%q<rspec>, [">= 1.3.0"])
  end
end
