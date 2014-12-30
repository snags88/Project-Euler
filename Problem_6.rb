# The sum of the squares of the first ten natural numbers is,

# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


def square_sum(num)
    if num == 1
        return 1
    else
        return num + square_sum(num - 1)
    end
end

def sum_square(num)
   if num == 1
       return 1
   else
       return (num ** 2) + sum_square(num - 1)
   end
end    
    
n = 100
puts (square_sum(n) ** 2) - sum_square(n)