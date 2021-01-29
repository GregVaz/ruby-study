#!/usr/share/rvm/rubies/ruby-3.0.0/bin/ruby

# Symbols
# There are simply constant names that you don't have to predeclare and that are guaranteed to be unique.
# a symbol starts with a colon and is normally followed by some kind of name

def walk(direction)
  if direction == :north
    print("north\n")
  end
end

walk(:north)
walk(:east)

inst_section = {
  :chello     => 'string',
  :clarinet   => 'woodwind',
  :drum       => 'percussion'
}

puts "An chello is a #{inst_section[:chello]} instrument"
