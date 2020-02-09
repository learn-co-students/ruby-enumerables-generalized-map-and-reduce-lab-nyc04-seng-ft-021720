# Your Code Here

def map(src_array)
  result = []
  src_array.each{ |item|
    result.push(yield(item))
  }
  result
end

def reduce(src_array, starting_value = nil)
  if starting_value
    sum = starting_value
    i = 0
  else
    sum = src_array[0]
    i = 1
  end
  while i < src_array.length 
    sum = yield(sum, src_array[i])
    i += 1
  end
  sum
end