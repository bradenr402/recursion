def fibonacci(n, result = [0, 1])
  return [0] if n == 1
  while result.size < n
    result << result[-1] + result[-2]
  end
  result
end

print "Fibonacci using iteration:\n   "
p fibonacci(8)

def fibonacci_rec(n, result = [0, 1])
  if n == 1
    [0]
  elsif n == 2
    [0, 1]
  else
    result = fibonacci_rec(n - 1)
    result << result[-1] + result[-2]
  end
end

print "\nFibonacci using recursion:\n   "
p fibonacci_rec(8)
