class Node
  attr_reader :key
  attr_accessor :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    # optional but useful, connects previous link to next link
    # and removes self from list.
  end
end

class LinkedList 

include Enumerable

  def initialize
    @head = Node.new
    @tail = Node.new
    @head.next = @tail
    @tail.prev = @head
  end

  def [](i)

    # each_with_index { |link, j| return link if i == j }
    # nil
  end

  def first
  end

  def last
  end

  def empty?
    
  end

  def get(key)
    # return self.key if self.include?(key)
    # nil
  end

  def include?(key)
    # self.include?(key)
  end

  def append(key, val)
    new_tail = Node.new(key, val)
    @tail.next = new_tail
    new_tail.prev = @tail
    @tail = new_tail
  end

  def update(key, val)
  end

  def remove(key)
  end

  def each
  end

  # uncomment when you have `each` working and `Enumerable` included
  # def to_s
  #   inject([]) { |acc, link| acc << "[#{link.key}, #{link.val}]" }.join(", ")
  # end
end
