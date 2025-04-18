# Peekr

Peekr is a simple and lightweight gem that allows you to explore the structure of Rails models in the Rails console. With just a command, you can inspect columns, associations, and instance methods of any ActiveRecord model.

Features
	•	Lists model columns with their types (e.g., string, integer, datetime)
	•	Displays associations (e.g., has_many, belongs_to, etc.)
	•	Shows instance methods defined directly on the model

## Installation

TODO: Replace `UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG` with your gem name right after releasing it to RubyGems.org. Please do not do it earlier due to security reasons. Alternatively, replace this section with instructions to install your gem from git if you don't plan to release to RubyGems.org.

Add this line to your application’s Gemfile:
```bash
  gem 'peekr'
```

And then execute

```bash
bundle install
```

## Usage

Once Peekr is installed, you can use it in your Rails console or script to inspect a model.

Example usage:

```bash
Peekr::Peek.explore(User)
```

Example output:

```bash
Exploring: User

Columns:
- first_name (string)
- last_name (string)
- phone_number (string)
- country_code (string)

Associations:
- has_many :orders

Instance Methods (defined on model only):
- name
```

## Development

To contribute to Peekr, clone this repository and run:

``` bash
bin/setup
```
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/peekr. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/peekr/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Peekr project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/peekr/blob/main/CODE_OF_CONDUCT.md).
