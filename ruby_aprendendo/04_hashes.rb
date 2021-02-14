### Hash

h = {}    # instanciar um novo hash. ou:
h = Hash.new
# => []

h.class
# => Hash

h = {               # atribuição
  "nome" => "Ricardo",
  "idade" => 30
}
# => {"nome"=>"Ricardo", "idade"=>30}

h["nome"]           # acessando um valor por sua chave
# => "Ricardo"

# é comum usar símbolos para as chaves, evitando a criação de novos objetos na memória a cada reatribuição
h = {
  :nome => "Ricardo",
  :idade => 31
}
# ou ainda de forma simplificada
h = { nome: "Ricardo", idade: 31 }
# => {:nome=>"Ricardo", :idade=>30}

h[:idade]
# => 31

h[:idade] = 32      # atribui um novo valor à chave, se não existir será inserida e o valor atribuído.
# => 32


### Alguns métodos

h.empty?    # está vazio? (true ou false)
# => false
h.keys      # retorna array com as chaves
# => [:nome, :idade]
h.values    # retorna array com os valores
# => ["Ricardo", 32]