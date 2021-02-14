## Laços

count = 5
# => 5

while count > 0   # ENQUANTO a condição for verdadeira o bloco será executado
  puts "#{count} (while count > 0)"
  count -= 1      # count = count - 1
end

lista = [1, 2, 3, "Já!"]

for i in lista   # PARA cada item de uma lista ou outro objeto iterável (responde ao método each), como um range
  puts "item atual: #{i} (usando for)"
end

lista.each do |i|
  puts "item atual: #{i} (usando each)"
end

hash = { nome: "Ricardo", idade: 30 }

hash.each do | chave, valor |
  puts "A chave #{chave} tem o valor #{valor}"
end

until count == 10         # ATÉ | quando verdadeiro o laço para
  puts "#{count} (until count == 10)"
  count += 2
end

### Comandos
# break   -> sair do laço
# return  -> sair do laço e do método que o contém
# next    -> interromper a iteração atual e passar para a próxima
# redo    -> repetir o laço do início sem reavaliar a condição

while count > 0
  count -= 1
  break if count == 5
  puts "#{count} (while count > 0, break if count == 5)"
end

count = 10

while count > 0
  count -= 1
  next if count == 5
  puts "#{count} (while count > 0, next if count == 5)"
end

while count <= 10
  unless (6..8).include?(count)
    puts "#{count} (while count <= 10, unless include in 6..8 range)"
  else
    puts "-   (while count <= 10, unless include in 6..8 range)"
  end
  count += 0.5
end