Gem::Specification.new do |spec|
  spec.name     = 'prototype-rails'
  spec.version  = '3.2.1'
  spec.summary  = 'Prototype, Scriptaculous, and RJS for Ruby on Rails'
  spec.homepage = 'http://github.com/rails/prototype-rails'
  spec.author   = 'Xavier Noria'
  spec.email    = 'fxn@hashref.com'

  spec.files = %w(README Rakefile Gemfile MIT-LICENSE) + Dir['lib/**/*', 'vendor/**/*', 'test/**/*']

  spec.add_dependency('rails', '~> 3.2')
  spec.add_development_dependency('mocha')
  spec.license = "MIT"
end
