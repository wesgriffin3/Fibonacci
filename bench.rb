def rec_fib(n) #recursion
  if n < 2 
    return n
  else
    rec_fib(n-1) + rec_fib(n-2)
  end
end

def itr_fib(n) #iteration
  arr = [0, 1]

  while arr.length <= n
    last = arr.length - 1 #4
    second_last = arr.length - 2 #3
    new_item = arr[last] + arr[second_last] #5
    arr.push(new_item)
  end

  arr.last

end


require 'benchmark'

num = 35

Benchmark.bm do |x|
  x.report("iterative_fib") { itr_fib(num) }
  x.report("recursive_fib") { rec_fib(num) }
end