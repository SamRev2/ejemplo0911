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
end
  
cadena = "Casa CARRO bicicleta carro"
instancia = ContadordePalabras.new(cadena)
instancia.contar_palabras

