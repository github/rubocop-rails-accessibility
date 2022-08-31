# frozen_string_literal: true

require_relative "lib/rubocop/cop/version"

Gem::Specification.new do |spec|
  spec.name = "rubocop-rails-accessibility"
  spec.version = RubocopRailsAccessibility::VERSION
  spec.authors = ["GitHub Accessibility Team"]
  spec.email = ["accessibility@github.com"]

  spec.summary = "Custom extension for RuboCop."
  spec.homepage = "https://github.com/github/rubocop-rails-accessibility"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

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

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
