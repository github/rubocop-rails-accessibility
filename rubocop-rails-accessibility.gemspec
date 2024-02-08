# frozen_string_literal: true

require_relative "lib/rubocop/rails_accessibility/version"

Gem::Specification.new do |spec|
  spec.name = "rubocop-rails-accessibility"
  spec.version = RuboCop::RailsAccessibility::VERSION
  spec.authors = ["GitHub Accessibility Team"]
  spec.email = ["accessibility@github.com"]

  spec.summary = "Custom RuboCop rules for Rails Accessibility."
  spec.homepage = "https://github.com/github/rubocop-rails-accessibility"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.add_dependency "rubocop", ">= 1.0.0"

  spec.add_development_dependency "actionview"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop-github"
  spec.add_development_dependency "rubocop-rails"
  spec.add_development_dependency "rubocop-performance"

  spec.files = Dir[
    "config/*.yml",
    "guides/*.md",
    "lib/**/*.rb",
    "CONTRIBUTING.md",
    "LICENSE",
    "README.md",
  ]

  spec.require_paths = ["lib"]
end
