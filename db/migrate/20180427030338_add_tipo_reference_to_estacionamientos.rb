class AddTipoReferenceToEstacionamientos < ActiveRecord::Migration[5.1]
  def change
    add_reference :estacionamientos, :tipo, foreign_key: true
  end
end
