# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'teacup-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "teacup-rails"
  gem.version       = Teacup::Rails::VERSION
  gem.authors       = ["Alon Salant"]
  gem.email         = ["alon@salant.org"]
  gem.description   = %q{Makes Teacup templates written in native CoffeeScript available to Rails asset pipeline.}
  gem.summary       = %q{Use Teacup templates in Rails.}
  gem.homepage      = "http://github.com/asalant/teacup-rails"

  gem.add_dependency('railties', '>= 3.1.0')
  gem.add_dependency('coffee-script', '~> 2.2.0')

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
