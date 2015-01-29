# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.


teens_a = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tens_a = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
single_a = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
letter_count = 0


for num in 1..1000
  number_string = ""
  
  if (num / 1000) > 0
    number_string += single_a[(num / 1000) - 1]
    number_string += "thousand"
    num = num % 1000
  end
    
  if (num / 100) > 0 
    number_string += single_a[(num/100) - 1]
    number_string += "hundred"
    if num % 100 > 0
      number_string += "and"
    end
    num = num % 100
  end

  if (num / 10) > 0
    if (num / 10) == 1
      number_string += teens_a[num - 10]
      letter_count += number_string.length
      puts number_string + " (" + number_string.length.to_s + ")"
      next
    else
      number_string += tens_a[(num / 10) - 2]
    end
    num = num % 10
  end

  if num > 0
    number_string += single_a[num - 1]
  end
  puts number_string + " (" + number_string.length.to_s + ")"
  letter_count += number_string.length

end

puts letter_count