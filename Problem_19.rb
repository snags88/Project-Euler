# You are given the following information, but you may prefer to do some research for yourself.

# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.

# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

def sundays(arr, value)
  count = 0
  arr.each { |n|
    count += 1 if (n + value) % 7 == 0
  }
  return count
end

first_day = {
  normal: [1, 32, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335],
  leap_year: [1, 32, 61, 92, 122, 153, 183, 214, 245, 275, 306, 336]
}

offset = {
  m: 6,
  t: 5,
  w: 4,
  r: 3,
  f: 2,
  sa: 1,
  su: 0
}

start_day = :m
start_year = 1901
end_year = 2000
sunday_count = 0

for num in start_year..end_year
  year_type = (num % 4 == 0 && num % 400 != 0) ? (:leap_year) : (:normal)
  
  sunday_count += sundays(first_day[year_type], offset[start_day])

  add_days = (year_type == :leap_year) ? (2) : (1)
  new_start_num = ((offset[start_day] - add_days >= 0) ? (offset[start_day] - add_days) : (offset[start_day] - add_days + 7))
  start_day = offset.key(new_start_num)
end

puts sunday_count

