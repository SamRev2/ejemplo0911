class ContadordePalabras
    def initialize(cadena)
      @cadena = cadena
    end
  
    def contar_palabras
      palabras = @cadena.downcase.split  
      frecuencia = Hash.new(0)            
  
      palabras.each do |palabra|
        frecuencia[palabra] += 1
      end
  
      frecuencia.each do |palabra, cuenta|
        puts "#{palabra} #{cuenta}"
      end
    end
end
  
texto = "Casa CARRO bicicleta carro"
instancia = ContadordePalabras.new(texto)
instancia.contar_palabras

