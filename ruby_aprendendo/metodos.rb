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
