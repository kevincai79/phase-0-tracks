
# 5.6 Mandatory Pairing: Solving Problems with Data Structures
# Kevin Cai & Jae Easley

# 5.6 release 0: Implement a Simple Search

# Below between line 11 to line 24 (in between '=begin' and '=end') was the code we worked out first

=begin

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

=end

# Updated method from Jae Easley without using .include:

 def search_array(array, x)
  i = 0

  array.each do | y |
    if y == x
      return i
    end
    i += 1
  end
  return nil
end

test_array = [ 1, 2, 3, 5, 8, 100 ]
search_array(test_array, 5)
search_array(test_array, 7)

# 5.6 release 1: Calculate Fibonacci Numbers

def fib(x)
  fibo_number = [0, 1]
  (x - 2).times do
  n = fibo_number[-1] + fibo_number[-2]
  fibo_number << n
  end
  puts fibo_number
end

fib(100)

# 5.6 release 2: Sort an Array - BUBBLE SORT

# Define a method and take an array as parameter

=begin
Loop through the array (array element - 1) times
-- Check each element except the last element,if the element is greater than the element next to it, swap their positions
=end

# Continue above loop rules to check the array until not any element needs to be compared.

def bubble_sort(arr)
  loop do
    sorted = false
    (arr.length - 1).times do | i |
  if arr[i] > arr[i+1]
    arr[i], arr[i+1] = arr[i+1], arr[i]
    sorted = true
  end
  end
  break if sorted == false
end
arr
end
puts bubble_sort([1, 20, 3, -7, 100, 2, -15])
