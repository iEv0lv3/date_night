class BinarySearchTree
  attr_accessor :root

  def initialize
    @root = nil
  end

  def insert(number, data)
    @root = Node.new(number, data) if @root.nil?
    current_node = @root
    if number > @root.number
      current_node = current_node.right until current_node.right.nil?
      current_node.right = Node.new(number, data)
    elsif number < @root.number
      current_node = current_node.left until current_node.left.nil?
      current_node.left = Node.new(number, data)
    end
  end
end
