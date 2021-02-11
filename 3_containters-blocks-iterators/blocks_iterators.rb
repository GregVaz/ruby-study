# Blocks and Iterators
#
#

# A for loop oterating over an array
# What coul be more natural?
#
# instead we could write code like this:
#
# top_five.each do |word, count|
#   puts "#{word}: #{count}"
# end
#
# The method each is an iterator - a method that invokes a block of code repeatedly.
#
# Or even you can write this more compactly as this:
# puts top_five.map { |word, count| "#{word}: #{count}"}
#

# Blocks
#   A block is simply a chunk o code enclosed between either braces {}
#   Or the keywords do and end
# array.each {|value| puts value}
# 
# array.each do |value|
#   puts value
# end
#
# Its like the body of an anonymous method. 
#   The block can take parameters (this paremeters appear at the start of the block between vertical bars ||)
#

# Iterators
# A ruby iterator is simply a method taht can invoke a block of code
# 
# Within the method, the vlock may be invoked, almost as if it were a method itself, using yield statement.
def fib_up_to(max)
  i1, i2 = 1, 1
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end

fib_up_to(1000) {|f| print f, " "}

# What makes blocks interesting, is that you can pass paremeters to them and receive values from them.
#
# Some iterators
#
# each
#   each is probably the simplest iterator
#   All it does is yield successive elemeents of its collection
[1,2,3,4,5].each {|i| puts i}

# Find
# a block also return a value to the method. The value of the last expression evaluated in the block is passed back to the method as the value of the yield.
#
class Array
  def find
    each do |value|
      return value if yield(value)
    end
    nil
  end
end

[1,2,3,4,5,6].find {|v| v*v > 30}

# Collect
#   Also known as map, which takes each element from the collections and passes it to the block
#
["H", "A", "L"].collect {|x| x.succ} # => ["I", "B", "M"]

# Sometimes you want to keep track of how many times you've been through the block
#
[6,5,4,3,2,1].each.with_index do |number, index|
  puts "#{index}: number: #{number}"
end


# Inject
#   (defined in the module Enumerable) lets you accumulate a value across the members of a collection
[1,3,5,7].inject(0) {|sum, element| sum+element} # => 0+1, 1+3, 4+5, 9+7 => 16
[1,3,5,7].inject(1) {|product, element| product+element} # => 1*1, 1*3, 3*5, 15*7 => 105
# in the example above, the first time the associated block is called, sum is set to inject's parameter, and element is set to the first element in the collection. And so on. 
#
# if inject is called with no parameter, it uses the first element of the collections as the initial value and starts the iteratio with the second value.
[1,3,5,7].inject {|sum, element| sum+element} # => 1+3, 4+5, 9+7 => 16
[1,3,5,7].inject {|product, element| product+element} # => 1*3, 3*5, 15*7 => 105

# And just to add to the mystique of inject, you can also give it the name of the method you want to applyt to successive elements to the collections. Theses examples work because, in Ruby, addition and multiplicatin are simplu methods on numbers, and :+ is the symbol corresponding to the method +
#
[1,3,5,7].inject(:+) # => 16
[1,3,5,7].inject(:*) # => 105
