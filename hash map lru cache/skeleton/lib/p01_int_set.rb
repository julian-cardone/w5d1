require 'byebug'

class MaxIntSet

  attr_accessor :store

  def initialize(max)
    @store = Array.new(max){false}
  end

  def insert(num)
    raise "Out of bounds" if !self.is_valid?(num)
    if !@store.include?(num)
      # debugger
      @store[num] = true
      return true
    end
  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    @store[num]
  end

  private

  def is_valid?(num)
    num < 50 && num > 0
  end

  def validate!(num)

  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    self[num] << num
  end

  def remove(num)
    self[num].delete(num)
  end

  def include?(num)
    return false if !self[num].include?(num)
    true
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    idx = num % @store.length
    @store[idx]
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end
