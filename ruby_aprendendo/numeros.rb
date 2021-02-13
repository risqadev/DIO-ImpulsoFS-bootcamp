### Números podem ser Integer e Float
42.class
# => Integer
42.5.class
# => Float
18_452_000      # '_' será desconsiderado pelo interpretador, pode ser usado como separador
# => 18452000

14.even?        # é par?
# => true
14.odd?         # é ímpar?
# => false

### Operadores

3 + 4
# => 7

4 - 3
# => 1

3 * 2
# => 6

6 / 2
# => 3

3 / 2     ### ATENÇÃO
# => 1    # acho que o quociente é inteiro porque o dividendo é um número inteiro
3.class
# => Integer
(3 / 2).class
# => Integer

3.0 / 2     # aqui o dividendo e o quociente são da classe float
# => 1.5
3.0.class
# => Float
(3.0 / 2).class
# => Float

11 % 3      # Módulo (resto da divisão)
# => 2

2**3      # potenciação
# => 8

Math.sqrt(9)
# => 3.0