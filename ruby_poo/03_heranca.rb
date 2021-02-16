class Sensor
  def instalar
    puts "Instalando o sensor"
  end
  def iniciar
    puts "Iniciando o sensor"
  end
  def metricas
    # sensor genérico
    puts "Coletando métricas"
    puts "Analisando métricas"
  end
end


class SensorTemperatura < Sensor
  def metricas            # sobrescrevendo o método metricas herdado de Sensor
    puts "Coletando métricas de temperatura"
    super                 # executa o bloco de metricas da superclasse
  end
end


sensor = SensorTemperatura.new

sensor.instalar
sensor.iniciar
sensor.metricas