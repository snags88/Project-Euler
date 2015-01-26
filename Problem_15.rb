# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

# How many such routes are there through a 20×20 grid?

#*******

# The number of paths of length a+b from the origin (0,0) to a point (a,b) which are restricted to east and north steps is given by the binomial coefficient (a+b; a).

#  (n; k)=(n!)/((n-k)!k!)
# Must calculate the binomial coefficient of (40; 20)

def factorial (num)
	if num == 1
		return 1
	else
		return num*factorial(num-1)
	end
end

puts factorial(40)/(factorial(20)**2)