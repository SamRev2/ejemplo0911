class ContadordePalabras
    def initialize(cadena)
      @cadena = cadena
    end
  
    def contar_palabras
      palabras = @cadena.downcase.split  
      contador = Hash.new(0)            
  
      palabras.each do |palabra|
        contador[palabra] += 1
      end
  
      contador.each do |palabra, numero|
        puts "La palabra #{palabra} se repitió un total de #{numero} veces"
      end
    end
    def actualizar_cadena(actualiza_cadena)
        @cadena = actualiza_cadena
    end    

    def to_s
      "La variable de instancia es '#{@cadena}'"
    end  
end
  
cadena = "Casa CARRO bicicleta carro"
instancia = ContadordePalabras.new(cadena)
instancia.contar_palabras

actualiza_cadena = "La nueva Cadena ES nueva"
instancia.actualizar_cadena(actualiza_cadena)
instancia.contar_palabras
puts instancia.to_s
