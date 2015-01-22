# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.


# To solve this problem user Sieve of Eratosthenes.
# The basis is to go through min through limit numbers and eliminating incremental values.

max = 2000000  # Set maximum number here
min = 2 	   # Set minimum search number here
limit = Math.sqrt(max).floor   # Determine search limit. It is the sqrt of the max.
primes =[]
num = min

# First, create a boolean array that consists of the min through max elements
for i in min..max
	primes << true
end

# Then do a double loop through the array.
# In the first loop, increment from min through the limit
while num <= limit 
	# In each iteration, first check to see if the current value is flagged as prime.
	if primes[num-2] == true
		j = num 
		# If the current value is prime, flag its multiples as non-prime.
		while (j - 2) <= (max - 2)
			unless j == num
				primes[j-2] = false
			end
			j += num
		end
	end
	num += 1
end

sum = 0
primes.each_index{ |value|
	if primes[value]
		sum += (value + 2)
	end
}

puts sum
