# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

x = 20
flag = false
while true
    for num in 1...20
        if x % num != 0
            flag = false
            break
        end
        flag = true
    end
    if flag
        break 
    end
    x += 20
end

puts x