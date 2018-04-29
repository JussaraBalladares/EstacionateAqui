class Ubicacion < ApplicationRecord

    has_many :estacionamientos

    def self.options_for_select
        order('LOWER(descripcion)').map { |e| [e.descripcion, e.id] }
    end
    
end
