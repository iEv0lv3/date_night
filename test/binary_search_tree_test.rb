require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/binary_search_tree'
require 'pry'

class BinarySearchTreeTest < Minitest::Test
  def test_binary_search_tree_exists
    tree = BinarySearchTree.new

    assert_instance_of BinarySearchTree, tree
  end

  def test_binary_search_tree_has_root
    tree = BinarySearchTree.new

    assert_nil tree.root
  end

  def test_binary_search_tree_root_can_be_set
    tree = BinarySearchTree.new
    tree.root = Node.new(78, 'Star Wars: A New Hope')

    assert_equal 78, tree.root.number
    assert_equal 'Star Wars: A New Hope', tree.root.data
  end

  def test_insert_to_binary_search_tree
    tree = BinarySearchTree.new
    tree.root = Node.new(50, 'Club Dred')
    tree.insert(54, 'Tropic Thunder')
    tree.insert(7, '50 First Dates')
    tree.insert(88, 'Lord of the Rings: Two Towers')

    assert_equal 'Tropic Thunder', tree.root.right.data
    assert_equal '50 First Dates', tree.root.left.data
  end

  def test_root_depth_level_of_binary_search_tree
    skip
    tree = BinarySearchTree.new

    assert_equal 0, tree.depth
  end

  def test_node_depth_level_of_binary_search_tree
    tree = BinarySearchTree.new
    tree.root = Node.new(50, 'Club Dred')
    tree.insert(54, 'Tropic Thunder')
    tree.insert(7, '50 First Dates')
    tree.insert(88, 'Lord of the Rings: Two Towers')
    tree.insert(49, 'The Rock')

    assert_equal 2, tree.depth(49)
  end
end
