class Node
  attr_accessor :data, :number, :right, :left

  def initialize(number, data)
    @number = number
    @data = data
    @right = nil
    @left = nil
  end
end
