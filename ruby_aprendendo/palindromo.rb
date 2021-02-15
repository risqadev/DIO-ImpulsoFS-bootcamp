def palindromo(word)
  reversed = word.reverse

  puts message = word == reversed ? "\"#{word.upcase}\" é palíndromo." : "\"#{word.upcase}\" não é palíndromo."
end

puts "Digite uma palvavra: "

input = gets.chomp.strip.downcase

palindromo(input)