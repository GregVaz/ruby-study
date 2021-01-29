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


