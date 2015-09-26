# Fibonacci Numbers:    0, 1, 1, 2, 3, 5, 8, 13, 21, ...

def fibs(n) # returns all numbers up to the nth, non-recursive 
  num = []
  i = 0
  while i <= n do
    num << 0 if i == 0
    num << 1 if i == 1
    num << (num[-2] + num[-1]) if i > 1
    i += 1
  end
  num
end

# p fibs(6) # => 0, 1, 1, 2, 3, 5, 8

def fib(n)  # returns only the nth number, recursive
  return 0 if n == 0
  return 1 if n == 1
  fib(n-1) + fib(n-2)
end

# p fibs(6) # => 8

def fibs_rec(n) # returns all numbers up to the nth, uses recursive fib(n)
  result = []
  i = 0
  while i <= n do
    result << fib(i)
    i += 1
  end
  result
end

# p fibs_rec(6) # => 0, 1, 1, 2, 3, 5, 8

def fibs_rec2(n, result = [0,1])  # returns all numbers up to the nth, all in one function 
  return [0] if n == 0
  return [0,1] if n == 1
  result << (result[-2] + result[-1])
  fibs_rec2(n-1, result)
  result
end

# p fibs_rec2(6) # => 0, 1, 1, 2, 3, 5, 8
