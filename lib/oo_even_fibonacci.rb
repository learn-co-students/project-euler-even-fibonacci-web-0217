# Implement your object-oriented solution here!

class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def sum
    sum, x, y = 0, 1, 2
    while y <= @limit
      sum += y if y.even?
      x, y = y, x+y
    end
    sum
  end
end

a = EvenFibonacci.new(100)
p a.sum
