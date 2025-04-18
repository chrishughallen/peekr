require_relative 'lib/peekr/version'

Gem::Specification.new do |spec|
  spec.name          = "peekr"
  spec.version       = Peekr::VERSION 
  spec.authors       = ["Chris Allen"]
  spec.email         = ["chrishughallen@gmail.com"]
  spec.summary	     = "A gem for exploring model details in Rails"
  spec.description   = "A gem for exploring model details in Rails in the rails console. It provides a simple interface to view model attributes, associations, and validations."
  spec.homepage      = "https://github.com/chrishughallen/peekr"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb"]
  spec.require_paths = ["lib"]
end