def even_fibonacci_sum(limit)
  fibonacci(limit).select do |i|
    i.even?
  end.reduce(:+)
end

def fibonacci(limit)
  fib = [1, 2]
  while fib[-1] + fib[-2] < limit
    fib << fib[-1] + fib[-2]
  end
  fib
end
