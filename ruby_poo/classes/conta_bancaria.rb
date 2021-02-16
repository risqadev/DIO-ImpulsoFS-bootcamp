class ContaBancaria
  @@proximo_numero = 1

  attr_reader   :id, :titular, :saldo, :historico
  attr_accessor :tarifa

  def initialize (titular, saldo = 0, tarifa = 0)
    @id = "conta#{@@proximo_numero}"
    @titular = titular
    @saldo = saldo
    @tarifa = tarifa
    @historico = []

    @@proximo_numero += 1
  end

  def transferir(id_conta_destino, valor)
    if @saldo >= (valor.abs + @tarifa)
      operacao = {
        data_hora: Time.now.getlocal,
        operacao: "saida",
        descricao: "Transferência de $ #{valor} para #{id_conta_destino.id}",
        valor: -valor.abs
      }
  
      id_conta_destino.depositar(valor, @id)

      @saldo += operacao[:valor]
      
      @historico << operacao

      tarifar(@tarifa)
  
      ap "#{@id} : #{operacao[:descricao]}"
    else
      ap "#{@id} : Saldo insuficiente ($ #{@saldo})."
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

  def tarifar(valor)
    operacao = {
      data_hora: Time.now.getlocal,
      operacao: "saida",
      descricao: "Tarifa de $ #{valor} por operação financeira realizada",
      valor: -valor.abs
    }
    
    @saldo += operacao[:valor]
    
    @historico << operacao

    ap "#{@id} : #{operacao[:descricao]}"
  end

  def self.proximo_numero
    @@proximo_numero
  end
end