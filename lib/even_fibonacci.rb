# Implement your procedural solution here!
def even_fibonacci_sum(limit)
  arr = [1, 2]
  num = 0
  i = 0

  loop do
    num = arr[i] + arr[i + 1]
    break if num > limit
    arr.push(num)
    i += 1
  end

  arr.reduce(0) do |total, num|
    num % 2 == 0 ? total += num : total
  end
end
