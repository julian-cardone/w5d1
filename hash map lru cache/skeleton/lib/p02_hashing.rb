class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    hash_number = 0
    (0...self.length).each do |idx|
      hash_number += (idx * self[idx].hash)
    end
    hash_number
  end
end

class String
  def hash
    alphabet = ("a".."z").to_a
    new_arr = []
    self.each_char do |char|
      new_arr << alphabet.index(char) 
    end
    new_arr.hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    array = self.sort_by{|k, v| [k, v]}
    array.flatten.hash
  end
end
