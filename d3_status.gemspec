# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "d3_status/version"

Gem::Specification.new do |s|
  s.name        = "d3_status"
  s.version     = D3Status::VERSION
  s.authors     = ["Authier David, Ghislain Fournous"]
  s.email       = ["david@awea.fr"]
  s.homepage    = ""
  s.summary     = %q{Diablo 3 servers status}
  s.description = %q{Diablo 3 servers status}

  s.rubyforge_project = "d3_status"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "awesome_print"
  s.add_runtime_dependency "nokogiri"
  s.add_runtime_dependency "colorize"
end
