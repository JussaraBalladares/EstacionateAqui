class Estacionamiento < ApplicationRecord

    belongs_to :distrito
    belongs_to :ubicacion
    belongs_to :tipo

    validates  :descripcion, 
               :direccion,
                presence: true

    filterrific(
        default_filter_params: { sorted_by: 'created_at_desc' },
        available_filters: [
            :sorted_by,
            :with_distrito_id,
            :with_tipo_id,
            :with_ubicacion_id
        ]
    )
    
    scope :with_distrito_id, lambda { |distrito_ids|
        return nil  if '0' == distrito_ids
        where(distrito_id: [*distrito_ids])
    }

    scope :with_tipo_id, lambda { |tipo_ids|
        return nil  if '0' == tipo_ids
        where(tipo_id: [*tipo_ids])
    }

    scope :with_ubicacion_id, lambda { |ubicacion_ids|
        return nil  if '0' == ubicacion_ids
        where(ubicacion_id: [*ubicacion_ids])
    }

    scope :sorted_by, lambda { |sort_option|
        Estacionamiento = (sort_option =~ /desc$/) ? 'desc' : 'asc'
        case sort_option.to_s
        when /^created_at/
        order("created_at #{ Estacionamiento }")
        else
        raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
        end
    }
end
