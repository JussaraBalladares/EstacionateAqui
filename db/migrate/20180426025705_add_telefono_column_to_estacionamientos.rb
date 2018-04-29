class AddTelefonoColumnToEstacionamientos < ActiveRecord::Migration[5.1]
  def change
    add_column :estacionamientos, :telefono, :string
  end
end
