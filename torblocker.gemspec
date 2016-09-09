# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'torblocker/version'

Gem::Specification.new do |spec|
  spec.name          = "torblocker"
  spec.version       = Torblocker::VERSION
  spec.authors       = ["chienomi"]
  spec.email         = ["hq@torblocker.com"]

  spec.summary       = "Security API to block unwanted access from Tor browser and untrusted IPs in one line of code."
  spec.description   = "Security API to block unwanted access from Tor browser and untrusted IPs in one line of code."
  spec.homepage      = "https://torblocker.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
