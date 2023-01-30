class StackPlus
  attr_reader :data

  def initialize
    # Use an array as the underlying data structure
    @data = []
  end

  def push(value)
    # Push a value onto the array
    data.push(value)
  end

  def pop
    # Edge case: return -1 if the array is empty
    return -1 unless data.size > 0

    # Otherwise, just pop the top element from the array
    data.pop
  end

  def increment(n)
    # We need to iterate over n elements from the array,
    # but if there are fewer than n elements in the array,
    # we can just iterate over the length of the array
    [n, data.size].min.times do |i|
      # increment the value of each element by 1
      data[i] += 1
    end
  end
end