# Blocks
# https://poignant.guide/book/chapter-4.html

# If you use arrows inside of an Array, you’ll end up with a Hash inside of that Array.
kitty_toys =
  [:shape => 'sock', :fabric => 'cashmere'] +
  [:shape => 'mouse', :fabric => 'calico'] +
  [:shape => 'eggroll', :fabric => 'chenille']

# Equivalent to:
# kitty_toys = [
#   {:shape => 'sock', :fabric => 'cashmere'},
#   {:shape => 'mouse', :fabric => 'calico'},
#   {:shape => 'eggroll', :fabric => 'chenille'}
# ]

p kitty_toys.sort_by { |toy| toy[:fabric] }

# Sorting and Iterating to Save Lives
# https://poignant.guide/book/chapter-4.html

# `toy` is a block argument
# `sort_by` is an iterator. It sorts alphabetically.
kitty_toys.sort_by { |toy| toy[:shape] }.each do |toy|
  puts "Blixy has a #{ toy[:shape] } made of #{ toy[:fabric] }"
end

# An Unfinished Lesson
# https://poignant.guide/book/chapter-4.html

non_eggroll = 0
kitty_toys.each do |toy|
  next if toy[:shape] == 'eggroll'
  non_eggroll = non_eggroll + 1
end

puts "Number of non-eggroll toys: " + non_eggroll.to_s

puts "Toys that aren’t made of chenille: "

kitty_toys.each do |toy|
  break if toy[:fabric] == 'chenille'
  p toy
end