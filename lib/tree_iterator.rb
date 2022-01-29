# frozen_string_literal: true

class TreeIterator
  def initialize(node)
    @head = node
  end

  def each(block)
    queue = []
    queue.push(@head)

    until queue.empty?
      current = queue.shift
      queue.push(current.left) unless current.left.nil?
      queue.push(current.right) unless current.right.nil?
      block.call(current)
    end
  end
end
