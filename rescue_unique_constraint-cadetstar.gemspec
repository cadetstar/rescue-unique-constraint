# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rescue_unique_constraint/version'

Gem::Specification.new do |spec|
  spec.name          = "rescue_unique_constraint-cadetstar"
  spec.version       = RescueUniqueConstraint::VERSION
  spec.authors       = ["Tam Dang", "Yan Pritzker", "Michael Madison"]
  spec.email         = ["tam.dang@reverb.com","yan@reverb.com", "cadetstar@hotmail.com"]
  spec.summary       = %q{Turns ActiveRecord::RecordNotUnique errors into ActiveRecord errors}
  spec.description   = %q{Fork of https://github.com/reverbdotcom/rescue_unique_contraint. Rescues unique constraint violations and turns them into ActiveRecord errors. The fork adds functionality for including scope as an additional option}
  spec.homepage      = "https://github.com/cadetstar/rescue_unique_contraint"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", ">= 3.2", "< 7"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.5"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "sqlite3", "~> 1.3"
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'gem-release'
end
