# rubocop-extension-template

Custom [RuboCop](https://github.com/rubocop/rubocop) extension template.

## Usage

1. [Use this template](https://github.com/r7kamura/rubocop-extension-template/generate) to create a repository
2. Rename gem name from `my_extension` to your own
3. Run `bin/setup`
4. Add your custom cop by running `bundle exec rake new_cop[Foo/Bar]`
5. Edit `lib/rubocop/cop/foo/bar.rb`
