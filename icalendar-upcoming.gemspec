# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'icalendar/upcoming/version'

Gem::Specification.new do |spec|
  spec.name          = "icalendar-upcoming"
  spec.version       = Icalendar::Upcoming::VERSION
  spec.authors       = ["Bernard Potocki"]
  spec.email         = ["bernard.potocki@imanel.org"]

  spec.summary       = %q{Show upcoming events from Icalendar.}
  spec.homepage      = "https://github.com/imanel/icalendar-upcoming"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'icalendar-recurrence', '~> 1.1'
end
