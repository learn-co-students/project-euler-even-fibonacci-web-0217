class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def sum
    fibonacci.select do |i|
      i.even?
    end.reduce(:+)
  end

  def fibonacci
    fib = [1, 2]
    while fib[-1] + fib[-2] < @limit
      fib << fib[-1] + fib[-2]
    end
    fib
  end


end
