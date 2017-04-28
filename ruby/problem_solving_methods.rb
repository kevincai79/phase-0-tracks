
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

