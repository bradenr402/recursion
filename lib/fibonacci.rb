def fibs(n, result = [0, 1])
  return [0] if n == 1
  while result.size < n
    result << result[-1] + result[-2]
  end
  result
end

p fibs(8)

def fibs_rec(n, result = [0, 1])
  if n == 1
    [0]
  elsif n == 2
    [0, 1]
  else
    result = fibs_rec(n - 1)
    result << result[-1] + result[-2]
  end
end

p fibs_rec(8)
