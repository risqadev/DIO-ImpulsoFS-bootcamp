class ContaBancaria
  @@proximo_numero = 1

  attr_accessor :saldo, :historico
  attr_reader   :id, :titular

  def initialize (titular, saldo = 0)
    @id = "conta#{@@proximo_numero}"
    @titular = titular
    @saldo = saldo
    @historico = []

    @@proximo_numero += 1
  end

  def transferir(id_conta_destino, valor)
    if @saldo >= valor.abs
      operacao = {
        data_hora: Time.now.getlocal,
        operacao: "saida",
        descricao: "Transferência de $ #{valor} para #{id_conta_destino.id}",
        valor: -valor.abs
      }
  
      id_conta_destino.depositar(valor, @id)
      
      @saldo += operacao[:valor]
      
      @historico << operacao
  
      ap "#{@id} : #{operacao[:descricao]}"
    else
      ap "#{@id} : Saldo insuficiente ($ #{@saldo}). Operação não realizada."
    end
  end

  def depositar(valor, id_conta_origem = nil)
    operacao = {
      data_hora: Time.now.getlocal,
      operacao: "entrada",
      descricao: id_conta_origem != nil ? "Transferência de $ #{valor} de #{id_conta_origem}" : "Depósito de $ #{valor}",
      valor: valor.abs
    }

    @saldo += operacao[:valor]
    
    @historico << operacao
    
    ap "#{@id} : #{operacao[:descricao]}"
  end

  def self.proximo_numero
    @@proximo_numero
  end
end