require "awesome_print"       # gem install awesome_print
require "./classes/pessoa"
require "./classes/carro"

ricardo = Pessoa.new("Ricardo")
palio = Carro.new("Fiat", "Palio", 2005, ricardo)

ap ricardo.nome
ap palio.modelo
ap palio.dono.nome