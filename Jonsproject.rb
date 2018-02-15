puts "give me a number between 1 and 10"


number_from_user = gets.to_i

my_number_is = rand(9) + 1

puts "you entered the number #{number_from_user}"


if number_from_user % 2 == 0
  puts "the number is even"
else
  puts "the number is odd"
end
