# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

=begin
def is_factor(x, num)
    if x % num == 0
        return true
    end
    return false
end
   
def factor_pair(x, num)
    return x / num
end

def factors(n)
    sum = 0
    for i in 1...n
       if n % i == 0 
           sum += i
       end
    end
    return sum
end

def is_prime (num)
    for i in 2...num
        if num % i == 0
            return false
        end
    end
    return true
end

x = 600851475143

for n in 1..x 
    if is_factor(x,n) 
        if is_prime(factor_pair(x,n))
            puts factor_pair(x,n)
            break
        end
    end
end

=end

x = 600851475143
n = 2
largest_factor = 1

while x > 1
    if x % n == 0
        largest_factor = n
        while x % n == 0
            x = x / n
        end
    end
    n += 1
end

puts largest_factor