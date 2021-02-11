# Enumerators
#   Ruby comes with a buil-in Enumerators class, which implements external iterators in Ruby for just such occasions
#   
#   You can create a Enumerator objet by calling the to_enum method (or its synonym, enum_for) on a collections such as an array or a hash
#

a = [1,3,"cat"]
h = {dog: "canine", fox: "vulpine"}

# Create numerators
enum_a = a.to_enum
enum_h = h.to_enum

enum_a.next # => 1
enum_h.next # => [:dog, "canine"]
enum_a.next # => 3
enum_h.next # => [:fox, "vulpine"]

# 
# Most of the internal iterator methods will return an Enumerator object if called without a block

enum_a = a.each # create an Enumerator using an internal iterator

# Ruby has a method called loop that does nothing byt repeatefly invke its block.
#
short_enum = [1,2,3].to_enum
long_enum = ('a'..'z').to_enum

loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end

# Ruby loop is also smarth when you use an Enumerator, when an enumerator object runs out of values inside a loop, the loop will terminate cleanly.
#produces
=begin
  1 - a
  2 - b
  3 - c
=end


