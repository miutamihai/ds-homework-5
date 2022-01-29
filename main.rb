# frozen_string_literal: true

require_relative 'lib/node'
require_relative 'lib/number_of_leaves_exercise1'
require_relative 'lib/number_of_nodes_exercise2'
require_relative 'lib/tree_height_exercise3'
require_relative 'lib/tree_width_exercise6'
require_relative 'lib/tree_to_list_exercise7'

tree = Node.new(1)
tree.left = Node.new(2)
tree.right = Node.new(3)
tree.left.right = Node.new(4)
tree.left.left = Node.new(5)

puts "Number of leaves is #{number_of_leaves(tree)}"
puts "Number of nodes is #{number_of_nodes(tree)}"
puts "Height of tree is #{tree_height(tree)}"
puts "Width of tree is #{tree_width(tree)}"
puts "Tree turned into a list is #{tree_to_list(tree).extract_values}"
