class MinhaClasse
  def m1                # por padrão os métodos são públicos
    puts "método m1"
    m2
    m3
    m4
  end

  private               # os métodos abaixo deste ponto serão privados
                        # só podem ser chamados por outros métodos dentro da
  def m2                # própria classe ou objetos criados com ela, mas não
    puts "método m2"    # entre eles
  end

  def m3
    puts "método m3"
  end

  protected             # os métodos abaixo serão protected
                        # só podem ser chamados por outros métodos dentro da
  def m4                # própria classe ou objetos criados com ela, inclusive
    puts "método m4"    # entre eles (objetos dentro da mesma hierarquia)
  end

end

class MinhaSubClasse < MinhaClasse
  def m5
    puts "método m5 (MinhaSubClasse)"

    m2              # private herdado de Minha Classe (executado dentro de m5)

    objeto2 = MinhaClasse.new

    #objeto2.m3     # falha: private de outro objeto da mesma hierarquia

    objeto2.m4      # funciona: protected de outro objeto da mesma hierarquia
  end
end

objeto1 = MinhaClasse.new

#objeto1.m4       # método protected: não é possível chamar diretamente
#objeto1.m3       # método private: não é possível chamar diretamente
objeto1.m1        # m1 é público

objeto3 = MinhaSubClasse.new
objeto3.m5