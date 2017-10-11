# True
# https://poignant.guide/book/chapter-4.html

approaching_guy = true

print "Hugo Boss" if true
# print "Hugo Boss"

if approaching_guy == true
  print "\nThat necklace is classic."
end

if approaching_guy == false
  print "\nGet in here, you conniving devil."
end

# The double equals sign is a method.
approaching_guy.==( true )

if nil.==( true )
  print "\nThis will never see realization."
end

at_hotel = true
email = if at_hotel
          "why@hotelambrose.com"
        else
          "why@drnhowardcham.com"
        end

print "\n" + email

# Should you have several lines of code in an if or unless, *only the answer from the last full statement will be used [as a return value]*.

# The double less-than << is the concatenation operator.
email = if at_hotel
          address = "why"
          address << "@hotelambrose"
          address << ".com" # alias: address.<<( ".com" )
        end

print "\n" + email

# You can use the `nil?` method on any value in Ruby.

print( if at_hotel.nil?
         "\nNo clue if he's in the hotel."
       elsif at_hotel == true
         "\nDefinitely in."
       elsif at_hotel == false
         "\nHe's out."
       else
         "\nThe system is on the freee-itz."
       end )

print "\n"