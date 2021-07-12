# frozen_string_literal: true
def time_string(sec)
  # Ok, I'm cheating a bit here.
  # Time.at(xxx) returns the time after xxx second starting at the 1 january of 1970.
  # Since we are only interested in hour, minutes and seconds we kind of don't care about the date :D
  #
  # #utc removes the timezone (otherwiste the hour isn't right)
  # #strftime format the time as a string: https://ruby-doc.org/core-2.7.0/Time.html#method-i-strftime
  Time.at(sec).utc.strftime('%H:%M:%S')
end
