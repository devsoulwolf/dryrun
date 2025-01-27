# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dryrun/version'

#rake build    # Build dryrun-0.0.1.gem into the pkg directory
#rake install  # Build and install dryrun-0.0.1.gem into system gems
#rake release  # Create tag v0.0.1 and build and push dryrun-0.0.1.gem t...
#rake spec     # Run RSpec code examples

Gem::Specification.new do |spec|
  spec.name          = "dryrun"
  spec.version       = DryRun::VERSION
  spec.authors       = ["cesar ferreira"]
  spec.email         = ["cesar.manuel.ferreira@gmail.com"]

  spec.summary       = %q{Tool which allows to quickly try the demo project of any Android Library}
  spec.description   = %q{Tool which allows to quickly try the demo project of any Android Library}
  spec.homepage      = "https://github.com/cesarferreira/dryrun"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'pry-byebug', '~> 3.1'
  spec.add_development_dependency "rspec"

  spec.add_dependency "bundler", "~> 1.8"
  spec.add_dependency 'colorize',  '~> 0.7'
  spec.add_dependency 'nokogiri',  '~> 1.6.6.2'

end
