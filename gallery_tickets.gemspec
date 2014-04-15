# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gallery_tickets/version'

Gem::Specification.new do |spec|
  spec.name          = "gallery_tickets"
  spec.version       = GalleryTickets::VERSION
  spec.authors       = ["Teja Kocjancic", "Angela Ebirim"]
  spec.email         = ["teja.kocjancic@fundingcircle.com"]
  spec.summary       = %q{Connects to an API}
  spec.description   = %q{Connects to an API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
