class Pessoa
  @@numero_de_pessoas  = 0   # variável de classe é precedida por @@

  def self.gerar    # método de classe é precedido por self.
    puts "Instanciar Pessoa com gerar (método de classe)"

    Pessoa.new

    @@numero_de_pessoas += 1
  end

  def self.numero_de_pessoas
    @@numero_de_pessoas
  end
end

pessoa1 = Pessoa.gerar

#pessoa1.gerar    # o objeto instanciado não herda o método de classe (self)

puts Pessoa.numero_de_pessoas

pessoa2 = Pessoa.gerar

puts Pessoa.numero_de_pessoas

pessoa3 = Pessoa.new    # instancia criada sem o método não realizou as outras operações definidas (puts e incremento)

puts Pessoa.numero_de_pessoas