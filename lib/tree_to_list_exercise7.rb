# frozen_string_literal: true

require_relative 'doubly_linked_list'
require_relative 'tree_iterator'

def tree_to_list(tree)
  list = DoublyLinkedList.new
  iterator = TreeIterator.new(tree)

  push_to_list = lambda do |node|
    list.push(node.value)
  end

  iterator.each(push_to_list)

  list
end
