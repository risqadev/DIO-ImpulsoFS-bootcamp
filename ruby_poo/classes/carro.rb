class Carro
  attr_accessor :marca, :modelo, :ano, :dono
  def initialize(marca, modelo, ano, dono)
    @marca = marca
    @modelo = modelo
    @ano = ano
    @dono = dono
  end
end