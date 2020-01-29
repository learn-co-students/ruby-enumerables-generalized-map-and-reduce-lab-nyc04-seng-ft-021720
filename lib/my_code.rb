def map(array)
  new_array = []
  index = 0
  while index < array.length do
    new_array.push(yield(array[index]))
    index += 1
  end
  new_array
end

def reduce(array, start_value = nil)
  if start_value
    total = start_value
    index = 0
  else
    total = array[0]
    index = 1
  end
  while index < array.length do
    total = yield(total, array[index])
    index += 1
  end
  total
end
