class Node
  attr_accessor :next_node, :prev_node, :node_data

  def initialize(data: nil)
    @node_data = data
  end
end

class DoubleLinkedList
  attr_accessor :root_node

  def initialize(node: nil)
      @root_node = node
  end
end