# n! means n × (n − 1) × ... × 3 × 2 × 1

# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

def factorial(value)
  if value == 1
    return 1
  else
    return value * factorial(value - 1)
  end
end

sum = 0

factorial(100).to_s.split('').each {|n|
  sum += n.to_i
}

puts sum