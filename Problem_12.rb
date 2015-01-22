# The sequence of triangle numbers is generated by adding the natural numbers. 
# So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# Let us list the factors of the first seven triangle numbers:

#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28

# 36: 1,2,3,6,12,18,36
# 45: 1,3,5,9,15,45
# 55: 1,5,11,55

# We can see that 28 is the first triangle number to have over five divisors.

# What is the value of the first triangle number to have over five hundred divisors?


#*************************
# create function to determine triangle number given a number
def triangluar(num)
	sum = 0
	for x in 1..num
		sum += x
	end
	return sum
end

# set variables
divisors = 500
factors_count = 0
num = 1
triangle_number = 0

# create double loop, outer loop to go through possible triangle number 
# and checking the number of divisors
# the inner loop will check for the number of factors.
while true
	triangle_number = triangluar(num)
	for factor_check in 1..(triangle_number ** 0.5)
		if triangle_number % factor_check == 0
			factors_count += 2
		end
	end

	if (factors_count - 1) >= divisors
		break
	end
	num += 1
	factors_count = 0
end

puts triangle_number