class LinkedList
  attr_accessor :head, :tail

  def initialize(head)
    raise "LinkedList must be initialized with a Node." unless head.is_a?(Node)
    @head = head
    @tail = head
  end

  def insert(node)
    @tail.next = node
    @tail = @tail.next
  end

  def print
    current_node = @head

    while current_node != nil
      puts "\tLL Node Value = #{current_node.value}"
      current_node = current_node.next
    end
  end

  def iterate
    if block_given?
      current_node = @head

      while current_node != nil
        yield current_node.value
        current_node = current_node.next
      end
    else
      print
    end
  end
end