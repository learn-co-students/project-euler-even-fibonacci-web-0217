# Implement your procedural solution here!

def even_fibonacci_sum(limit)
  sum, x, y = 0, 1, 2
  while y <= limit
    sum += y if y.even?
    x, y = y, x+y
  end
  sum
end
