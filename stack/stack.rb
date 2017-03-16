class Stack
  def initialize(size)
    @size = size
    @store = Array.new(size)
    @top = -1
  end

  def push(element)
    if full?
      raise "stack overflow"
    else
      @top = @top + 1
      @store[@top] = element
    end
  end

  def pop
    if empty?
      raise "stack is empty"
    else
      popped = @store[@top]
      @store[@top] = nil
      @top = @top.pred
      popped
    end
  end

  private

  def full?
    @top == @size - 1
  end

  def empty?
    @top == -1
  end
end