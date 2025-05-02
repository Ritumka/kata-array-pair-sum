array = [1, 2, 3, 4, 4, 6, 8]

set_array = array.to_set

puts set_array


a = Set.new([1, 2, 3, 4])
b = Set.new([4, 5, 6, 7])

puts a | b # union
puts a & b # intersection
puts a - b # difference
