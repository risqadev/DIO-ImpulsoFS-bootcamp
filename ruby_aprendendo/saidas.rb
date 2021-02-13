### Saídas

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