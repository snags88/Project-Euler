# 2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2**1000?

number = 2**1000
digits_a = number.to_s.split("")
sum = 0

digits_a.each {|num_s|
	sum += num_s.to_i
}

puts sum