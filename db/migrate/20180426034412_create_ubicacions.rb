class CreateUbicacions < ActiveRecord::Migration[5.1]
  def change
    create_table :ubicacions do |t|
      t.string :codigo
      t.string :descripcion

      t.timestamps
    end
  end
end
