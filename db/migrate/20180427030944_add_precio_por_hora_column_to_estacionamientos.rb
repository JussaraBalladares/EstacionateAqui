class AddPrecioPorHoraColumnToEstacionamientos < ActiveRecord::Migration[5.1]
  def change
    add_column :estacionamientos, :precioporhora, :decimal
  end
end
