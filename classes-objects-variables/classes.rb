#!/usr/share/rvm/rubies/ruby-3.0.0/bin/ruby
# Classes, Objects and Variables

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn  # an instance variable
    @price = Float(price)
  end
  # Override the default implementation of to_s
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
end

b = BookInStore.new('isbn1', 3.14)
puts b  # it calls the to_s method

# initialize method
#   is a special method in Ruby programs
#   Ruby allocates some memory to hold an uninitialized object and then calls that object's initialize method
#
#   The parameters in the initialize method act just like local variable, so once the initialize method returns they would just evaporate
#
#
