# frozen_string_literal: true

def tree_height(node)
  if node.nil?
    0
  else
    left_height = tree_height(node.left)
    right_height = tree_height(node.right)

    if left_height > right_height
      left_height + 1
    else
      right_height + 1
    end
  end
end
