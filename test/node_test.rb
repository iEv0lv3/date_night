require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/binary_search_tree'
require 'pry'

class NodeTest < Minitest::Test
  def test_node_exists
    tree_node = Node.new(14, 'Super Troopers')

    assert_instance_of Node, tree_node
  end

  def test_node_has_number_and_data_instance_variables
    tree_node = Node.new(35, 'Super Troopers')

    assert_equal 35, tree_node.number
    assert_equal 'Super Troopers', tree_node.data
  end

  def test_node_has_left_and_right_instance_variables
    tree_node = Node.new(35, 'Super Troopers')

    assert_nil tree_node.right
    assert_nil tree_node.left
  end
end
