require './lib/node'

class BinarySearchTree
  attr_accessor :root

  def initialize
    @root = nil
  end

  def insert(number, data)
    @root = Node.new(number, data) if @root.nil?
    current_node = @root
    loop do
      if number > current_node.number && !current_node.right.nil?
        current_node = current_node.right
      elsif number > current_node.number && current_node.right.nil?
        current_node.right = Node.new(number, data)
        break
      elsif number < current_node.number && !current_node.left.nil?
        current_node = current_node.left
      elsif number < current_node.number && current_node.left.nil?
        current_node.left = Node.new(number, data)
        break
      end
    end
  end

  def depth(number)
    count = 0
    count if @root.nil? || (@root.left.nil? && @root.right.nil?)
    current_node = @root
    loop do
      if number > current_node.number && !current_node.right.nil?
        current_node = current_node.right
        count += 1
      elsif number == current_node.number
        return count
      elsif number < current_node.number && !current_node.left.nil?
        current_node = current_node.left
        count += 1
      elsif number == current_node.number
        return count
      end
    end
  end
end
