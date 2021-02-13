# IRB (Interactive Ruby)

puts "Hello, world!"
# Olá mundo
# => nil      # nada (retorno do método puts)

### Saídas
print ["A", "B", "C"]   # não quebra a linha e retorna nada
# ["A", "B", "C"]=> nil
puts ["A", "B", "C"]    # itera o argumento quebrando as linhas e retorna nada
# A
# B
# C
# => nil
p ["A", "B", "C"]       # não itera e quebra a linha a final, retorna o argumento
# ["A", "B", "C"]
# => ["A", "B", "C"]

### Operações matemáticas

3 + 4
# => 7

4 - 3
# => 1

3 * 2
# => 6

6 / 2
# => 3

3 / 2     ### ATENÇÃO
# => 1    # acho que o quociente é inteiro porque o dividendo é um número inteiro
3.class
# => Integer
(3 / 2).class
# => Integer

3.0 / 2     # aqui o dividendo e o quociente são da classe float
# => 1.5
3.0.class
# => Float
(3.0 / 2).class
# => Float

2**3      # potenciação
# => 8

Math.sqrt(9)
# => 3.0


### Strings

first_name = "Ediberto"   # atribuição com aspas (permite escape e interpolação)
# => "Ediberto"

middle_name = 'Silvério'  # atribuição com apóstrofes
# => "Silvério"

last_name = %q(Reis)      # atribuição com %q()
# => "Reis"

occupation = %Q(Engineer) # atribuição com %Q() (permite escape e interpolação)
# => "Engineer"

full_info = "#{first_name} #{middle_name} #{last_name}, #{15 + 17} anos" # interpolação de código em uma string, será executado antes da atribuição
# => "Ediberto Silvério Reis, 32 anos"

message = <<~TAG
  Atribuição usando heredoc.

  O que estiver entre as 'TAG' será atribuído à variável, inclusive com caractertes de escape e interpolações.
TAG
# => "Atribuição usando heredoc.\n\nO que estiver entre as 'TAG' será atribuído à variável, inclusive com caractertes de escape.\n"

puts Strings.public_methods  # vai exibir os métodos disponíveis para strings

occupation.length       # length é um dos métodos para strings
# => 8
occupation.upcase       # caixa alta
# => "ENGINEER"
occupation.downcase     # caixa baixa
# => "engineer"
"renato silva".capitalize
# => "Renato silva"
"   espaços antes e depois  ".strip   # remove os espaços antes e depois
# => "espaços antes e depois"
"texto para reverter".reverse
# => "retrever arap otxet"

"Ricardo"[0]    #pega um caractere específico pelo seu índice
# => "R"

"Ricardo"[-1]
# => "o"

"Guanabara"[0, 3]     # a partir do índice 0, toma 3 caracteres
# => "Gua"

"Cadu".chars    # retorna um array com os caracteres da string
# => ["C", "a", "d", "u"]

"-" * 10        # multiplicação de string
# "----------"

"palavras separadas por espaços".split()  # retorna um array com substrings. Espaço é o separador padrão, mas podemos definir outro.
# ["palavras", "separadas", "por", "espaços"]
"strings separadas-no hífen".split("-")
# ["strings separadas", "no hífen"]







### Métodos, as funções do Ruby

def h(name = world)         # argumento com um valor padrão
  puts "Hello, #{name}!"    # interpolação em uma string (só funciona com "")
end
# => :h

h
# Hello, world!
# => nil

h("Ricardo")          # parênteses são opcionais: h "Ricardo"
# Hello, Ricardo!
# => nil
