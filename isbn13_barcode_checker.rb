digits = gets.chomp
sum = 0
digits.each_char.with_index { |digit,index| sum += index % 2 == 0 ? digit.to_i * 1 : digit.to_i * 3 }

isbn_13th_digit = 10 - sum % 10
ISBN = isbn_13th_digit.zero? ? digits + '0' : digits + isbn_13th_digit.to_s

puts ISBN
