def fib(n)
  arr = [0, 1]

  while arr.length <= n
    last = arr.length - 1 #4
    second_last = arr.length - 2 #3
    new_item = arr[last] + arr[second_last] #5
    arr.push(new_item)
  end

  arr.last

end

puts fib(35)
