def cypher(string, shift)
  string_split = string.chars.map do |char| #Splitting the string into characters
  ascii_char = char.ord #.ord converts the string into it's ASCII value

    if char.between?('a', 'z')
      ((ascii_char - 'a'.ord + shift) % 26 + 'a'.ord).chr #Difference of input and A plus shift. Remainder is used for values larger than 26 to shift from Z to A.
    elsif char.between?('A','Z')
      ((ascii_char - 'A'.ord + shift) % 26 + 'A'.ord).chr #Same thing, but for capitals!
    else
      char #Unshiftable characters such as !@#$%& are simply left alone.
    end
end
string_split.join #Rejoin the split!
end

puts "Enter your phrase to encrypt:"
user_input = gets.chomp
puts "How many letters would you like to shift this by?"
user_shift = gets.chomp.to_i


p cypher(user_input, user_shift)
puts "Shifted your phrase by #{user_shift} characters!"
