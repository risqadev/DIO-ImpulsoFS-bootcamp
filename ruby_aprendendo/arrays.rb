### Arrays

lista = []    # instanciar um novo array
lista = Array.new
# => []

lista = ["gato", 2, true]   # elementos podem ser de múliplos tipos
# => ["gato", 2, true]

lista[0]    # um elemento pode ser acessado pelo índice
# => "gato"

lista[2] = false    # reatribui o 3º item para false
# => false

lista << "novo item"    # inclui "novo item" no array lista. Ou:
lista.append("novo item")
# => ["gato", 2, false, "novo item"]

lista.length    # tamanho do array
# => 4
lista.empty?    # está vazio? (true ou false)
# => false
lista.first     # toma o primeiro elemento
# => "gato"
lista.last      # toma o último elemento
# => "novo item"

listao = lista + ["maçã", "pastel", nil, 5, true]   # junta listas
# => ["gato", 2, false, "novo item", "maçã", "pastel", nil, 5, true]