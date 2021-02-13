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

puts String.public_methods  # vai exibir os métodos disponíveis para strings

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

"Olá, nome".gsub("nome", "Ricardo")   # substituição de substring
# => "Olá, Ricardo"

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

cpf = 145600
p "O CPF é %011d" %cpf
# O CPF é 00000145600
# => nil