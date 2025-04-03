# HexletCode

[![Actions Status](https://github.com/ilsathabirov/rails-project-63/workflows/Ruby%20CI/badge.svg)](https://github.com/ilsathabirov/rails-project-63/actions)
[![hexlet-check](https://github.com/ilsathabirov/rails-project-63/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/ilsathabirov/rails-project-63/actions)

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/hexlet_code`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hexlet_code'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install hexlet_code

## Usage

```ruby
HexletCode::Tag.build('br')
# <br>

HexletCode::Tag.build('img', src: 'path/to/image')
# <img src="path/to/image">
```

## Development

After checking out the repo, run `make install` to install dependencies. Then, run `make test` to run the tests. You can also run `make lint` to run the rubocop linter.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ilsathabirov/rails-project-63.
