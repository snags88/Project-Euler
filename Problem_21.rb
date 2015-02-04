=begin
Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.
=end

def divisors(value)
  div_a =[1]
  divisor = 2

  while divisor < Math.sqrt(value)
    if value % divisor == 0
      div_a << divisor
      div_a << (value / divisor)
    end
    divisor += 1
  end
  div_a.sort
end

def sum_array_values(arr)
  arr.inject{|sum, n| sum + n }
end

def amicable?(value)
  value == sum_array_values(divisors(sum_array_values(divisors(value)))) && value != sum_array_values(divisors(value)) ? true : false
end

amicable_nums = []


for i in 1..10000
  if amicable_nums.count(i) == 0
    amicable_nums << i if amicable?(i)
  end
end

#puts amicable_nums
puts sum_array_values(amicable_nums)