# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.


a = 3.0
b = 0.0
c = 0.1

flag = true

while flag
    c = (a**2 - 1000*a + 500000) / (1000-a)
    if c % 1 == 0 && a < c
        b = 1000 - a - c
        break
    end
    a += 1
end




puts a
puts b
puts c

puts a*b*c