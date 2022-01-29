# frozen_string_literal: true

require_relative 'tree_height_exercise3'

def get_level_width(node, level)
  if node.nil?
    0
  elsif level == 1
    1
  elsif level > 1
    get_level_width(node.left, level - 1) + get_level_width(node.right, level - 1)
  end
end

def tree_width(node)
  result = 0

  (1..tree_height(node)).each do |level|
    level_width = get_level_width(node, level)

    result = level_width if level_width > result
  end

  result
end
