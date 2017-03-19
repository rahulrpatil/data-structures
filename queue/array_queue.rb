class ArrayQueue
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @head, @tail = -1,0
  end

  def enqueue(element)
    if full? or element.nil?
      nil
    else
      @tail = @tail.pred
      @store[@tail] = element
      self
    end
  end

  def dequeue
    if empty?
      nil
    else
      element = @store[@head]
      @tail = @tail.succ
      @store.unshift(nil)
      @store.pop
      element
    end
  end

  private

  def full?
    @tail.abs == @size
  end

  def empty?
    @head == -1 and @tail == 0
  end
end