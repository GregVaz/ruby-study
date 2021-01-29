#!/usr/share/rvm/rubies/ruby-3.0.0/bin/ruby

=begin
  A regular expression is simply a way of specifying a pattern of character to be matched in a string.
  In Ruby you create a regular expression by writing a pattern between slash characters (/pattern/)
  Regular expressions are objects and can be manipulated as such
=end

/Perl|Python/ # Pipe character -> either the thing on the right or the thing on the left

/P(erl|ython)/ # the same as above

# repetition

/ab+c/ # a followed by one or more b's, followed by a c
/ab*c/ # a followed by zeo or more b's, followed by a c


