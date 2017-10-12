# http://www.techotopia.com/index.php/Working_with_Dates_and_Times_in_Ruby#Calculating_the_Difference_Between_Dates
# https://stackoverflow.com/questions/46717906/what-is-the-modern-equivalent-of-ruby-s-deprecated-date-day-fraction-to-time
require 'date'

class Date
  def self.day_fraction_to_time(fr)
    ss,  fr = fr.divmod(SECONDS_IN_DAY) # 4p
    h,   ss = ss.divmod(3600)
    min, s  = ss.divmod(60)
    return h, min, s, fr
  end
end

today = DateTime.now
# => #<DateTime: 441799066630193/180000000,-301/1440,2299161>
puts "Today: " + today.to_s

# birthday = Date.new(2008, 4, 10)
birthday = Date.new(2017, 11, 8)
# => #<Date: 4909133/2,0,2299161>
puts "Birthday: " + birthday.to_s

# days_to_go = birthday - today
# puts days_to_go

time_until = birthday - today
# => Rational(22903369807, 180000000)
puts "Time Until: " + time_until.to_s

time_until.to_i             # get the number of days until my birthday
# => 127
puts "Time Until (integer): " + time_until.to_i.to_s

# day_fraction_to_time is deprecated
hours,minutes,seconds,frac = Date.day_fraction_to_time(time_until)
# [3053, 46, 57, Rational(1057, 180000000)]

puts "It is my birthday in #{hours} hours, #{minutes} minutes and #{seconds} seconds (not that I am counting)"
# It is my birthday in 3053 hours, 46 minutes and 57 seconds (not that I am counting)