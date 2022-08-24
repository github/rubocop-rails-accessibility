# frozen_string_literal: true

require "rubocop"

module RuboCop
  module Cop
    module RubocopRailsAccessibility
      class LinkHasHref < Base
        MSG = "Links should go somewhere, you probably want to use a `<button>` instead."

        def on_send(node)
          receiver, method_name, *args = *node

          return unless receiver.nil? && method_name == :link_to

          return unless args.length == 1 || (args.length > 1 && args[1].type == :str && args[1].children.first == "#")

          add_offense(node.loc.selector)
        end
      end
    end
  end
end
