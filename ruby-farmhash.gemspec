# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "farmhash/version"

Gem::Specification.new do |s|
  s.name        = "ruby-farmhash"
  s.version     = FarmHash::VERSION
  s.authors     = ["Mike Kim"]
  s.email       = ["mykoweb@gmail.com"]
  s.homepage    = "http://github.com/mykoweb/ruby-farmhash"
  s.summary     = %q{ruby bindings for google's farmhash}
  s.description = %q{ruby bindings for google's farmhash}

  s.rubyforge_project = "ruby-farmhash"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.extensions    = ["ext/farmhash/extconf.rb"]
end
