## Saída de dados

print ["A", "B", "C"]   # não quebra a linha e retorna nada
# ["A", "B", "C"]=> nil

puts ["A", "B", "C"]    # itera o argumento sem as aspas quebrando as linhas e retorna nada
# A
# B
# C
# => nil

p ["A", "B", "C"]       # não itera e quebra a linha a final, retorna o argumento
# ["A", "B", "C"]
# => ["A", "B", "C"]


## Entrada de dados

gets()    #Interrompe a execução e recebe uma entrada
# algo foi digitado↵   <- digitação e enter
# => "algo foi digitado\n"

input = gets.chomp    # atribui a entrada removendo a quebra ao final
# algo foi digitado↵   <- digitação e enter
# => "algo foi digitado"

valor = gets.chomp.to_i   # atribui a entrada como número inteiro
# 5↵   <- digitado 5 e enter
# => 5
valor.class
# => Integer

valor = gets.chomp.to_f   # atribui a entrada como float
# 5↵   <- digitado 5 e enter
# => 5.0
valor.class
# => Float