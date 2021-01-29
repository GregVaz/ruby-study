# Arrays
# The class Array holds a collectonis of object references.
# Each object reference occupies a position
#
# Arays are indexed using the [] operator.
#
#
a = [3.14159, "pie", 99]
puts a
puts a.class
puts a.length
a.each {|item| puts item}

b = Array.new
puts b.class
puts b.length
b[0] = "first"
b[1] = "second"
puts b

# 
# Index an array with a negative integer, and it counts from the end
#
a = [1,3,5,7,9]
a[-1] = # => 9
a[-2] = # => 7

#
# Index arrays with a pair of numbers,[start, count]
#
a[1, 3] # => [3,5,7]
a[3,1] # => [7]
a[-3,2] # => [5,7]

a[1..3] # => [3,5,7]
a[1...3] # => [3,5] limit for the right
a[3..3] # => [7]
a[-3..-1] # => [5,7,9]

#
# Array have a large number of other useful methods
# You can treat arrays as
#   stacks
#   sets
#   queues
#   dequeues
#   FIFO
#

stack = []
stack.push "red"
stack.push "green"
puts "Stack #{stack}"

stack.pop # => green
puts "Stack #{stack}"

queue = []
queue.push "red"
queue.push "green"
queue.shift # => "red"
queue.shift # => "green"

array = [1,2,3,4,5,6,7,8,9]
array.first(4) # => [1,2,3,4]
array.last(4) # => [6,7,8,9]
