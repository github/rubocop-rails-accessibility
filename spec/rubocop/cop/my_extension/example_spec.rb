# frozen_string_literal: true

RSpec.describe RuboCop::Cop::MyExtension::Example, :config do
  let(:config) { RuboCop::Config.new }

  # TODO: Write test code
  #
  # For example
  context 'when using `#bad_method`' do
    it 'registers an offense' do
      expect_offense(<<~RUBY)
        bad_method
        ^^^^^^^^^^ Use `#good_method` instead of `#bad_method`.
      RUBY
    end
  end

  context 'when using `#good_method`' do
    it 'registers no offenses' do
      expect_no_offenses(<<~RUBY)
        good_method
      RUBY
    end
  end
end
