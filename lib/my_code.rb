

# my_array = [1,2,3]

# my_array.map do |num|
#   num + 1
# end


# my_array.map {|num| num + 1}


# def add_numbers(num1, num2)
#   total = num1 + num2
#   yield(total)
#   total
# end

# myvar = add_numbers(1,2) do |t|
#   puts "The total is #{t}"
# end

# add_numbers(2,5) do |t|
#   puts "That adds up to #{t}"
# end

# puts myvar



def map(array)
  new = []
  i = 0
  while i < array.length
    new.push(yield(array[i]))
    i += 1
  end
  new
end

def reduce(array, starting_value = nil)
  
  if starting_value
    output = starting_value
  else
    output = array[0]
    array.shift()
  end
  
  array.length.times do |i|
    output = yield(output, array[i])
  end
  output
end