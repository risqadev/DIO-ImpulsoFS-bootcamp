## Condicionais

condicao1 = true
condicao2 = true

if condicao1         # se verdadeiro executa o bloco correspondente e sai da condicional sem avaliar as seguintes
  puts "condicao1 é verdadeiro"
elsif condicao2
  puts "condicao2 é verdadeiro"
else
  puts "condicao1 e condicao2 não são verdadeiros"
end
# Será executado se condicao1 for verdadeiro
# => nil

### Operadores relacionais

0 == 0        # igual
0 != "0"      # diferente | em Ruby a tipagem é dinâmica e forte
2 > 1         # maior que
2 >= 2        # maior ou igual a
1 < 2         # menor que
3 <= 3        # menor ou igual a
true && true  # conjunção (e)
true || false # disjunção (ou)
# => true

!false      # negação
# => true
!!false
!!nil
# => false
!!0         # em Ruby só nil e false tem valor lógico falso
!!""
# => true

valor = 30

if valor >= 50 && valor <= 100
  puts "Valor entre 50 e 100"
else
  puts "Valor não está entre 50 e 100"
end
# Valor não está entre 50 e 100
# => nil

puts "Valor igual a 30 (if)" if valor == 30 # forma simplificada de escrever uma condicional com um único bloco
# Valor igual a 30 (if)
# => nil

unless "uma string".empty?      # a não ser que (o contrário do if) | também aceita elsif e else
  puts "a string não está vazia (unless)"
end
# a string não está vazia (unless)
# => nil

puts "Valor é igual a 30 (unless)" unless valor != 30
# Valor igual a 30 (unless)
# => nil

### Operador ternário
valor > 20 ? (puts "Valor maior que 20 (op. ternário)") : (puts "Valor não é maior que 20 (op. ternário)")   # não funcionou sem os parênteses, por que?
# Valor maior que 20 (op. ternário)
# => nil

### Case

linguagem = "ruby"

case linguagem
when "ruby"
  puts "Bem vindo ao curso de Ruby"
when "javascript"
  puts "Bem vindo ao curso de Javascript"
else
  puts "Infelizmente não temos o seu curso"
end