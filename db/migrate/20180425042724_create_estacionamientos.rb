class CreateEstacionamientos < ActiveRecord::Migration[5.1]
  def change
    create_table :estacionamientos do |t|
      t.string :descripcion
      t.string :direccion

      t.timestamps
    end
  end
end
