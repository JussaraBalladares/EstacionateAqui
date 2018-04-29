class AddUbicacionReferenceToEstacionamientos < ActiveRecord::Migration[5.1]
  def change
    add_reference :estacionamientos, :ubicacion, foreign_key: true
  end
end
