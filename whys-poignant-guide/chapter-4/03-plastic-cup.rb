# Nil
# https://poignant.guide/book/chapter-4.html

plastic_cup = nil
# plastic_cup = false
# plastic_cup = true

# glass_cup = nil
# glass_cup = false
# glass_cup = true

# False
# https://poignant.guide/book/chapter-4.html

if plastic_cup
  print "Plastic cup is on the up 'n' up!"
end

unless plastic_cup
  print "Plastic cup is on the down low."
end

print "\nYeah, plastic cup is up again!" if plastic_cup
print "\nHardly. It's down." unless plastic_cup

# Not in the guide: `rescue nil` prevents errors from displaying
print "\nWe're using plastic 'cause we don't have glass." if plastic_cup unless glass_cup rescue nil

print "\n"