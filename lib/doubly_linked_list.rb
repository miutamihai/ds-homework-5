# frozen_string_literal: true

require_relative 'doubly_linked_list_item'

class DoublyLinkedList
  attr_accessor :list, :index

  def initialize
    @list = []
    @index = 0
  end

  def push(value)
    new_item = DoublyLinkedListItem.new(value)

    @list[@index - 1].link_next(new_item) if @list.length > 1

    @list.push(new_item)
    @index += 1
  end

  def extract_values
    @list.map(&:value)
  end
end
