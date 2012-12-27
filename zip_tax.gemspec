# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zip_tax/version'

Gem::Specification.new do |gem|
  gem.name          = "zip_tax"
  gem.version       = ZipTax::VERSION
  gem.authors       = ["Eric Steele"]
  gem.email         = ["eric@notvelcro.com"]
  gem.description   = %q{Ruby wrapper for the Zip-Tax api}
  gem.summary       = %q{This is a Ruby wrapper for interacting with the Zip-Tax API}
  gem.homepage      = "https://github.com/genericsteele/zip_tax"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
