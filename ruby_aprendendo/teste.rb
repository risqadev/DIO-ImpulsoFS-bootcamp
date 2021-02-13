condicao1 = true
condicao2 = true

if condicao1         # se verdadeiro executa o bloco correspondente e sai da condicional sem avaliar as seguintes
  puts "Será executado se condicao1 for verdadeiro"
elsif condicao2
  puts "Será executado se condicao2 for verdadeiro"
else
  puts "Será executado se não passar nos testes anteriores"
end