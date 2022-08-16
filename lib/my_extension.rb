# frozen_string_literal: true

require 'pathname'
require 'yaml'

require_relative 'my_extension/inject'
require_relative 'my_extension/version'
require_relative 'rubocop/cop/my_extension/example'

module MyExtension
  PROJECT_ROOT = ::Pathname.new(__dir__).parent.expand_path.freeze

  CONFIG_DEFAULT = PROJECT_ROOT.join('config', 'default.yml').freeze

  CONFIG = ::YAML.safe_load(CONFIG_DEFAULT.read).freeze

  private_constant(:CONFIG_DEFAULT, :PROJECT_ROOT)
end

MyExtension::Inject.defaults!
