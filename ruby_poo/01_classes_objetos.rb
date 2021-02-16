## Classes

class Recepcionista
  def initialize(nome = "Mundo")
    @nome = nome                  # @nome é uma variável de instância e estará
  end                             # disponível para os outros métodos
  def ola
    puts "Olá, #{@nome}"
  end
  def adeus
    puts "Adeus, #{@nome}"
  end
  def nome                # é um getter para verificar a variável de instância
    @nome
  end
  def nome=(novo_nome)    # um setter para alterar a variável de instância
    @nome = novo_nome
  end
  #attr_accessor :nome    # substitui os métodos getter e setter anteriores
  #attr_reader   :nome    # apenas getter
  #attr_writter  :nome    # apenas setter
end
# => nil


### Objetos

# objeto é uma instancia da classe que o criou

mundo = Recepcionista.new    # não passado parâmetro em new, usará o default
# => #<Recepcionista:0x0000564bb74ac208 @nome="Ricardo">

mundo.class
# => Recepcionista

mundo.ola
# Olá, Mundo
# => nil

mundo.nome
# => "Mundo"

mundo.nome="Pessoas"                # variável de instância do objeto alterada
# => "Pessoas"

mundo.nome
# => "Pessoas"

ricardo = Recepcionista.new("Ricardo")          # nova instância com parâmetro
# => #<Recepcionista:0x0000564bb74ac208 @nome="Ricardo">

ricardo.ola
# Olá, Ricardo
# => nil

ricardo.adeus
# Adeus, Ricardo
# => nil

ricardo.nome
# => "Ricardo"






# Fazendo isso, não se cria um novo objeto (uma nova instância)
outro_objeto = nome_do_objeto
# => #<NomeDaClasse:0x000055d0c0ebbd88>

# Veja que os dois tem o mesmo object_id, ou seja são nomes diferentes para o mesmo objeto na memória.
nome_do_objeto.object_id
# => 180
outro_objeto.object_id
# => 180

