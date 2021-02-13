def palindromo(word)
  reversed = word.reverse

  message = word == reversed ? "\"#{word.upcase}\" é palíndromo." : "\"#{word.upcase}\" não é palíndromo."

  puts message
end

puts "Digite uma palvavra: "

input = gets.chomp.strip.downcase

palindromo(input)