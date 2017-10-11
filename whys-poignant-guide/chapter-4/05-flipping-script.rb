# The Flipping Script
# https://poignant.guide/book/chapter-4.html

# `gets`: This method gets will pause Ruby to let you type.
# When you hit Enter, `gets` will then stop paying attention
# to your keyboard punchings and answer back to Ruby with
# a string that contains everything you typed.

# The `reverse` method is part of the String class.
# Which means that anything which is a string has the reverse method available.
print "Type and be diabolical: "
idea_backwards = gets.reverse

print idea_backwards

print "\n\n" + "The capital letters give it away. Maybe if we uppercase all letters in the string before we reverse it: "

idea_backwards = gets.upcase.reverse

print idea_backwards

print "\n"