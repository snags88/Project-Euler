# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome(n)
    digits_a = n.to_s.split("")
    digits_a.each_index {|i|
        if digits_a.length / 2 <= i
            break
        elsif digits_a[i] != digits_a[digits_a.length - i - 1]
            return false
        else
            next
        end
        }
    return true
end

def three_digit_factors(n)
   for num in 100...999
       if n % num == 0 and (n / num).to_s.length ==3
           return true
       end
   end
    return false
end

upper = 999 * 999
lower = 100 * 100

upper.downto(lower) {|i|
    if palindrome(i)
        if three_digit_factors(i)
            puts i
            break
        end
    end
}