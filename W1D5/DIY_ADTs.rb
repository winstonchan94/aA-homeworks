class Stack
  attr_accessor :stack

  def initialize
    @stack = []
    # create ivar to store stack here!
  end

  def add(el)
    @stack << el
    el
  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end

class Queue
  attr_accessor :queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.pop
  end

  def show
    @queue.dup
  end
end

class Map
  attr_accessor :map

  def initialize
    @map = []
  end

  def assign(key, value)
    @map = @map.select {|el| el[0] != key}
    @map << [key, value]
  end

  def lookup(key)
    found_key = @map.select {|el| el[0] == key}
    found_key[0][1] if found_key != []
    found_key
  end

  def remove(key)
    @map = @map.select {|el| el[0] != key}
  end

  def show
    @map.dup
  end
end
