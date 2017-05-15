# Implement your object-oriented solution here!
class EvenFibonacci
  attr_reader :limit
  def initialize(limit)
    @limit = limit
  end

  def sum
    arr = [1,2]
    i = 0
    num = 0
    loop do
      num = arr[i] + arr[i+1]
      break if num > @limit
      arr.push(num)
      i += 1
    end

    arr.reduce(0) do |total, num|
      num % 2 == 0 ? total += num : total
    end
  end
end
