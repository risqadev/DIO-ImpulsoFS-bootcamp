require "awesome_print"
require "./classes/conta_bancaria"

# Criação das contas com saldo inicial de $ 1000

conta1 = ContaBancaria.new("Ricardo", 1000)
conta2 = ContaBancaria.new("Marcelo", 1000)


# Operações
conta2.transferir(conta1, 100)

conta1.transferir(conta2, 253.5)

conta2.depositar(200)

conta1.transferir(conta2, 1400)


# Relatórios

ap "Histórico conta1:"
ap conta1.historico

ap "Histórico conta2:"
ap conta2.historico

ap "Saldo conta1: $ #{conta1.saldo}"
ap "Saldo conta2: $ #{conta2.saldo}"