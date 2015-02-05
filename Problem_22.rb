=begin
Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

What is the total of all the name scores in the file?
=end

def letter_value(letter)
  letter.upcase.bytes.join.to_i - 64
end

def name_value(name)
  total = 0
  name.upcase.each_char {|letter|
    total += letter_value(letter)
  }
  total
end

def txt_file_to_array(file_location)
  names_a = []
  File.open(file_location, "r") do |file|
    file.each_line do |line|
      names_a << line.gsub('"','').split(",")
    end
  end
  names_a.flatten.sort
end

directory = "p022_names.txt"

name_score_total = 0
txt_file_to_array(directory).each_with_index do |name, index|
  name_score_total += name_value(name) * (index + 1)
end

puts name_score_total