
# 5.6 release 0

def search_index(arr, x)
  i = 0

  if !arr.include? x
    return nil
  else
  while i < arr.length
    until arr[i] == x
      i += 1
      end
      return i
  end
end
end

# 5.6 release 1


def fib(x)
  fibo_number = [0, 1]
  (x - 2).times do |n|
  n = fibo_number[-1] + fibo_number[-2]
  fibo_number << n
end
  puts fibo_number
end

fib(100)
