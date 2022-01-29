# frozen_string_literal: true
require_relative 'tree_iterator'

# Check the `each` function in the `tree_iterator.rb`
# file for implementation details
def number_of_leaves(tree)
  iterator = TreeIterator.new(tree)
  leaves_counter = 0

  increment_leaves_counter = lambda { |node|
    leaves_counter += 1 if node.left.nil? && node.right.nil?
  }

  iterator.each(increment_leaves_counter)

  leaves_counter
end
