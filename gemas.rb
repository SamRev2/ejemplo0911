require 'faker'
class ListaCantantes

    def initialize()
        @cantantes = []
    end

    def generar_Lista
        100.times do
            cantante = {
              nombre: Faker::Music::RockBand.name,
              domicilio: Faker::Address.full_address,
              correo: Faker::Internet.email
            }
            @cantantes << cantante
        end
    end

    def imprimir_Lista
        @cantantes.each_with_index do |cantante, index|
            puts "#{index + 1}. Nombre del cantante: #{cantante[:nombre]}"
            puts "     Domicilio: #{cantante[:domicilio]}"
            puts "     Correo: #{cantante[:correo]}"
            puts " "
        end
    end
end
instancia = ListaCantantes.new
instancia.generar_Lista
instancia.imprimir_Lista