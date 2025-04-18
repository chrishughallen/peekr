Gem::Specification.new do |spec|
  spec.name          = "peekr"
  spec.version       = Peekr::VERSION
  spec.authors       = ["Chris Allen"]
  spec.email         = ["chrishughallen@gmail.com"]
  spec.description   = "A gem for exploring model details in Rails"
  spec.homepage      = "https://github.com/chrishughallen/peekr"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb"]
  spec.require_paths = ["lib"]
  
  spec.add_dependency "rails", "~> 6.0"
end