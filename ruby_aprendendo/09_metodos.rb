## Métodos, as funções do Ruby

def h(name = "world")         # argumento com valor padrão "world"
  puts "Hello, #{name}!"    # interpolação em uma string (só funciona com "")
end
# => :h

h
# Hello, world!
# => nil

h("Ricardo")          # parênteses são opcionais: h "Ricardo"
# Hello, Ricardo!
# => nil


### Parâmetros nomeados

# nomeando os parâmetros eles podem ser passados em qualquer ordem

def welcome(name:, course: "Ruby")
  puts "#{name}, welcome to #{course} course!"
end
# => :welcome

welcome(course: "Javascript", name: "Ricardo")
# Ricardo, welcome to Javascript course!
# => nil

welcome(name: "Ricardo")
# Ricardo, welcome to Ruby course!
# => nil