def even_fibonacci_sum(limit)
  fib_seq = [1, 2]
  counter = 1

  while fib_seq[counter] < limit
    counter += 1
    fib_seq[counter] = fib_seq[counter - 1] + fib_seq[counter - 2]
  end

  fib_seq.pop

  even_fib = fib_seq.map do |i|
    if i % 2 == 0
      i
    else
      i = 0
    end
  end

  even_fib.inject { |sum, i| sum + i }
end
