def fib(n)
  if n < 2 
    return n
  else
    fib(n-1) + fib(n-2)
  end
end
puts fib(35)