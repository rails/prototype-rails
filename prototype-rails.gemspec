Gem::Specification.new do |spec|
  spec.name     = 'prototype-rails'
  spec.version  = '0.1.beta'
  spec.summary  = 'Prototype integration for Ruby on Rails (including RJS)'
  spec.homepage = 'http://github.com/rails/prototype-rails'
  spec.author   = 'Xavier Noria'
  spec.email    = 'fxn@hashref.com'

  spec.test_files = %w()

  spec.files = %w() + spec.test_files
  
  spec.add_dependency('rails', '3.1.0.beta')
end