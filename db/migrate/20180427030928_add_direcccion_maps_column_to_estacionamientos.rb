class AddDirecccionMapsColumnToEstacionamientos < ActiveRecord::Migration[5.1]
  def change
    add_column :estacionamientos, :direccionmap, :string
  end
end
