# - Have the user enter a string
# - Swap out the letters for numbers as follows:
#    a == 4
#    e == 3
#    i == 1
#    o == 0 (ohh equals zero)
#    t == 7
# # - Remove spaces
# - capitalize words
# - add a random special character (*&^%$#@, etc.)
SPECIAL_CHARACTERS = ["@", "!", "%", "&", "*", ")", "("]

puts "password generator\n\n"

puts "please enter a phrase to convert"

original_phrase = gets

original_phrase_as_array = original_phrase.split

original_phrase_as_array.each do |word|
  word.capitalize!
end

new_passphrase = original_phrase_as_array.join

new_passphrase_array = new_passphrase.split("")

final_passphrase = ""

TRANSLATIONS = {
  "a" => "4",
  "e" => "3",
  "i" => "1",
  "o" => "0",
  "t" => "7",
}

new_passphrase=new_passphrase_array.each do |letter|

  unless TRANSLATIONS[letter.downcase.nil?]
  final_passphrase << letter
else
  final_passphrase << TRANSLATIONS[letter.downcase]
end

  case letter.downcase
  when "a" then final_passphrase << "4";
  when "e" then final_passphrase << "3";
  when "i" then final_passphrase << "1";
  when "o" then final_passphrase << "0";
  when "t" then final_passphrase << "7";
  else          final_passphrase << letter
  end


end

position_of_special_charachter = rand(final_passphrase.length - 1)
final_passphrase = final_passphrase.insert(position_of_special_charachter, SPECIAL_CHARACTERS.sample)





puts "original_phrase is #{original_phrase}"
puts "new passphrase is #{final_passphrase}"
