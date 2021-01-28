#!/usr/share/rvm/rubies/ruby-3.0.0/bin/ruby
# Ruby constants
# It is use to store a value for the duration of a Ruby program's execution
# (a common convention for declaring constants is to use uppercase letters)
MYCONSTANT = "hello"

# Ruby is a dynamically typed language

# Ruby variable declaration
a = 10
b = 5
c = 2

d, e, f = 10, 5, 2 # Parallel assignment

# Converting variable values
y = 10        # Class => Integer
x = 12345
y.to_f        # convert to Float
y.to_s        # Convert to String - default base 10
x.to_s(2)     # Convert to binary - base 2
x.to_s(16)    # Convert to hexadeximal - base 16

# Variable Scope
=begin
   Name begins with | Variable scope
   $                  A global variable
   @                  An instance variable
   [a-z] or _         A local variable
   [A-Z]              A constant
   @@                 A class variable 
=end
