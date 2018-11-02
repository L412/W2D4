class StackQueue
  def initialize
    @store = MyQueue.new
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end

  def enqueue(el)
    @store.enqueue(el)
  end

  def dequeue
    @store.dequeue
  end
end
