#!/usr/share/rvm/rubies/ruby-3.0.0/bin/ruby
#
# Objects and attributes
#

class BookInStore

  attr_reader :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

end

book = BookInStore.new("isbn1", 3.14)
puts "ISBN =  ${book.isbn}"

# Symbols are just a convenient way to referencing a name.
#   :isbn as meaning the name isbn and think of plain isbn as meaning the value of the variable
#
# the attr_reader creates the accessor methods, but the variables themselves don't need to be declared


# Writable Attributes
#   The attribute of an object can be accessed as if they were any other variable. 
#   To be able to assign to these variables, you do that by creating a Ruby method whose name ends with and equals sign.

class BookInStore

  attr_reader :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def price=(new_price)
    @price = new_price
  end

end

book = BookInStore.new("isbn1", 3.14)
puts "ISBN =  #{book.isbn}"
puts "Price = #{book.price}"
book.price = book.price * 0.75
puts "New Price = #{book.price}"


# The assignment book.price = *** invokes the method price= in the book object.
# Passing the discounted price as an argument. 
#
# Again, Ruby provides a shorcut for creating these simple arribute-setting methods
#   attr_writer   -> If you want a write-only accessor
#   attr_accessor -> if you want a read-write 
#

class BookInStore

  attr_reader   :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

end

book = BookInStore.new("isbn1", 3.14)
puts "ISBN =  ${book.isbn}"
puts "Price = #{book.price}"
book.price = book.price * 0.75
puts "New Price = #{book.price}"
