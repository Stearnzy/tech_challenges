# The Snail

# Given an n x n array, write a method that returns the array elements arranged from outermost elements to the middle element, traveling clockwise.

# Example: Ruby
# arrayMatrix = [
#   [1, 2, 3],
#   [4, 5, 6],
#   [7, 8, 9]
# ];

# snail(arrayMatrix) #=> [1, 2, 3, 6, 9, 8, 7, 4, 5]

input_array = [
  [1, 2, 3, 4],
  [5, 6, 7, 8],
  [9, 10, 11, 12],
  [13, 14, 15, 16]
]

columnified = input_array.transpose

result_array = []

until input_array.flatten.empty?
  result_array << input_array.shift
  result_array << columnified.pop
  result_array << input_array.pop.reverse unless input_array.empty?
  result_array << columnified.shift.reverse unless columnified.empty?
end

print result_array.flatten.uniq

# => [1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10]
