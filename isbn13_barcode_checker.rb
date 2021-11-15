# 1. Take each digit, from left to right and multiply them alternatively by 1 and 3
# 2. Sum those numbers
# 3. Take mod 10 of the summed figure
# 4. Subtract 10 and if the end number is 10, make it 0

digits = gets.chomp
sum = 0
digits.each_char.with_index { |digit,index| sum += index % 2 == 0 ? digit.to_i * 1 : digit.to_i * 3 }

isbn_13th_digit = 10 - sum % 10
ISBN = isbn_13th_digit.zero? ? digits + '0' : digits + isbn_13th_digit.to_s

puts ISBN
