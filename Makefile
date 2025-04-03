install:
	bundle install

test:
	bundle exec rspec

lint:
	bundle exec rubocop

.PHONY: install test lint 