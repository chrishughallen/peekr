# frozen_string_literal: true

require_relative "lib/peekr/version"

Gem::Specification.new do |spec|
  spec.name = "peekr"
  spec.version = Peekr::VERSION
  spec.authors = ["Chris"]
  spec.email = ["chrishughallen@gmail.com"]

  spec.summary = "Allows you to explore the structure of Rails models in a Rails console."
  spec.description = "Peekr is a simple and lightweight gem that allows you to explore the structure of Rails models in the Rails console. With just a command, you can inspect columns, associations, and instance methods of any ActiveRecord model."
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  # spec.metadata["homepage_uri"] = "https://github.com/chrishughallen/peekr"
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
