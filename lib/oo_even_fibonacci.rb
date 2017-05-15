class EvenFibonacci
  def initialize(limit)
    fib_seq = [1, 2]
    counter = 1

    while fib_seq[counter] < limit
      counter += 1
      fib_seq[counter] = fib_seq[counter - 1] + fib_seq[counter - 2]
    end

    fib_seq.pop

    @even_seq = fib_seq.map do |i|
      if i % 2 == 0
        i
      else
        i = 0
      end
    end
  end

  def sum
    @even_seq.inject { |sum, i| sum + i }
  end
end
