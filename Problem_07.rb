# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

# Loop through each number to see if it's divisible by any prime number lower than itself.

n = 10001

a = 3
prime_b = false
prime_a = [2]

while prime_a.length < n
    prime_b = true
    prime_a.each { |value|
        if a % value == 0
            prime_b = false
            break
        end
    }
    if prime_b
        prime_a << a
    end
    a += 1
end

puts prime_a.reverse[0]