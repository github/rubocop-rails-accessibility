# RuboCop Rails Accessibility

This repository provides recommended [RuboCop](https://github.com/rubocop/rubocop) configuration and additional **accessibility RuboCop Rails cops** for use on open source and internal Rails projects.

## Installation

Install the `rubocop-rails-accessibility` gem

```sh
gem install rubocop-rails-accessibility
```

or if you use bundler put this in your `Gemfile`

```ruby
gem 'rubocop-rails-accessibility'
gem "rubocop-performance", require: false
gem "rubocop-rails", require: false
```

## Usage

You need to tell RuboCop to load RuboCop Rails Accessibility.

Put this into your `.rubocop.yml`.

``` yaml
inherit_gem:
  rubocop-rails-accessibility:
    - config/default.yml
```

## Testing

Install all of the required gems

```sh
bundle install
```

Run the tests

```sh
bundle exec rake
```

## The Cops

All cops are located under
[`lib/rubocop/cop/rubocop-rails-accessibility`](lib/rubocop/cop/rubocop-rails-accessibility), and contain
examples/documentation.

## Rules

- [RuboCop::Cop::Accessibility::ImageHasAlt](guides/image-has-alt.md)
- [RuboCop::Cop::Accessibility::NoPositiveTabindex](guides/no-positive-tabindex.md)
- [RuboCop::Cop::Accessibility::NoRedundantImageAlt](guides/no-redundant-image-alt.md)

## Contributing

If you have any suggestion for how this project could be improved, please read the [contributing guidelines](https://github.com/github/rubocop-rails-accessibility/blob/main/CONTRIBUTING.md).
