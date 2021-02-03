# Hashes
#   Sometimes known as associative arrays, maps or dictionaries
#   Hashes are similar to arrays in that they are indexed collections of object references.
#
# When you store a value in a hash, you need to supply the index (key) and the entry to be stored with that key.
#

h = { 'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine' }

puts h['dog']

# use symbols
#

s = { :dog => 'canine', :cat => 'feline' }
