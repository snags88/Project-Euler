# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

#By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

sum_a = []
sum = 0
x = 0
a = 1
b = 2

while b <= 4000000 do
    if b % 2 == 0
        sum_a << b
        #puts b
    end
    x = b
    b += a
    a = x
end

sum_a.each{ |i|
    sum += i.to_i
    }
 
puts sum