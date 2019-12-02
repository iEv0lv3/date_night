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
end
