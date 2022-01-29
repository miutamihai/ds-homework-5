# frozen_string_literal: true
require_relative 'tree_iterator'

# Check the `each` function in the `tree_iterator.rb`
# file for implementation details
def number_of_nodes(tree)
  iterator = TreeIterator.new(tree)
  node_counter = 0

  count_nodes = lambda { |_|
    node_counter += 1
  }

  iterator.each(count_nodes)

  node_counter
end
