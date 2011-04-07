Gem::Specification.new do |spec|
  spec.name     = 'rjs'
  spec.version  = '0.1.beta'
  spec.summary  = 'RJS for Ruby on Rails'
  spec.homepage = 'http://github.com/fxn/rjs'
  spec.author   = 'Xavier Noria'
  spec.email    = 'fxn@hashref.com'

  spec.test_files = %w()

  spec.files = %w() + spec.test_files
  
  spec.add_dependency('rails', '3.1.0.beta')
end